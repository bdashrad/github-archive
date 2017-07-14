module GithubArchive
  # archive a set of repos
  class ArchiveRepos
    attr_accessor :client, :dry_run, :path, :verbose
    attr_reader :backup_count, :total_size

    def initialize(client, dry_run, path, verbose)
      @backup_count = 0
      @total_size = 0
      @path = path
      @client = client
      @dry_run = dry_run
      @verbose = verbose
    end

    def archive(repos)
      require 'tmpdir'
      Dir.mktmpdir('GHA') do |dir|
        repos.each do |repo|
          copy_repo(repo, dir)
          @backup_count += 1
        end

        next if dry_run
        tb = GithubArchive::Util::Tar.new
        tb.tar(dir, path)
        @total_size = tb.size
      end
    end

    def copy_repo(repo, path)
      require 'open-uri'
      if verbose or dry_run
        puts "Archiving #{repo[:full_name]}\n"
        puts "#{path}/#{repo[:name]}.tgz"
      end
      return if dry_run
      File.open(File.join(path, "#{repo[:name]}.tgz"), 'wb') do |f|
        f.write open(self.client.archive_link(repo[:full_name])).read
      end
    end
  end
end
