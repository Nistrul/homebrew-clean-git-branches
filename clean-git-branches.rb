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
    url "https://github.com/Nistrul/clean_git_branches/archive/refs/tags/v0.1.1.tar.gz"
    sha256 "449cc91bb457382a65d09778b2a50a4e92239d0a8efd1128c6d57f72f9814782"
    license "MIT"
  
    def install
      bin.install "clean_git_branches.sh"
    end
  
    test do
      system "#{bin}/clean_git_branches.sh", "--help"
    end
  end
  