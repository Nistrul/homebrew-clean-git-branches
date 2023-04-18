#!/usr/bin/env ruby
# clean_git_branches.rb
#
# A Homebrew formula for the clean_git_branches script.
#
# Copyright (C) 2023 Dale Freya
# This program is released under the terms of the MIT License.

class CleanGitBranches < Formula
    desc "A command-line tool to help maintain a tidy Git branches."
    homepage "https://github.com/Nistrul/clean-git-branches"
    url "https://github.com/Nistrul/clean_git_branches/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "03f39478c68f79d7616c368f28ba0c8e82248c056a0b893fddb4b52595873a31"
    license "MIT"
  
    def install
      bin.install "clean_git_branches.sh" => "clean_git_branches"
    end
  
    test do
      system "#{bin}/clean_git_branches.sh", "--help"
    end
  end
  