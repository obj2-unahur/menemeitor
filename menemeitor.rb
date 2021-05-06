#!/usr/bin/env ruby

require 'rubygems'
require 'bundler/setup'

require 'github_api'
require 'colorize'

token = ENV['GITHUB_TOKEN']
owner = ARGV.first

raise 'Para usar este script, tenés que poner un API token en la variable de entorno GITHUB_TOKEN.' unless token
raise 'Ups, no puedo hacer nada si no me decís con qué organización o usuario trabajar...' unless owner

def info(mensaje)
  puts mensaje.bold
end

def debug(mensaje)
  puts mensaje
end

def success(mensaje)
  puts mensaje.green
end

github = Github.new oauth_token: token, auto_pagination: true

repos = github.repos.list user: owner
info "Se encontraron #{repos.size} repositorios. ¡Comenzando privatización!"

repos.each_with_index do |repo, index|
  github.repos.edit owner, repo.name, name: repo.name, private: true
  debug "[#{index + 1} / #{repos.size}] Privatizado repo #{repo.name.bold}"
end

success '¡Privatización finalizada! El sultán te saluda desde la estratosfera. 🌎🚀'
