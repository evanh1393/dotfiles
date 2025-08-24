if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Nordic-inspired bobthefish theme configuration

# Use base16 or terminal-dark as base (works best with nordic colors)
set -g theme_color_scheme base16

# Nordic color overrides
# These override bobthefish's default colors with Nordic palette
set -g fish_color_normal d8dee9          # Nord4 - light gray
set -g fish_color_command 88c0d0         # Nord8 - light blue
set -g fish_color_quote a3be8c           # Nord14 - green
set -g fish_color_redirection b48ead     # Nord15 - purple
set -g fish_color_end 88c0d0            # Nord8 - light blue
set -g fish_color_error bf616a          # Nord11 - red
set -g fish_color_param d8dee9          # Nord4 - light gray
set -g fish_color_comment 4c566a        # Nord2 - dark gray
set -g fish_color_match ebcb8b          # Nord13 - yellow
set -g fish_color_selection 3b4252      # Nord1 - darker gray
set -g fish_color_search_match ebcb8b   # Nord13 - yellow
set -g fish_color_operator b48ead       # Nord15 - purple
set -g fish_color_escape d08770         # Nord12 - orange
set -g fish_color_cwd 5e81ac           # Nord10 - blue
set -g fish_color_autosuggestion 4c566a # Nord2 - dark gray
set -g fish_color_user 8fbcbb           # Nord7 - cyan
set -g fish_color_host 88c0d0           # Nord8 - light blue
set -g fish_color_cancel bf616a         # Nord11 - red

# Bobthefish display options
set -g theme_display_git yes
set -g theme_display_git_dirty yes
set -g theme_display_git_untracked yes
set -g theme_display_git_ahead_verbose yes
set -g theme_display_git_dirty_verbose yes
set -g theme_display_git_stashed_verbose yes
set -g theme_display_git_default_branch yes
set -g theme_git_default_branches master main
set -g theme_git_worktree_support yes

# Clean, minimal appearance
set -g theme_display_user no
set -g theme_display_hostname no
set -g theme_display_ruby no
set -g theme_display_node yes
set -g theme_display_python_env yes

# Nordic-style prompt
set -g theme_show_exit_status yes
set -g theme_display_jobs_verbose yes
set -g theme_use_abbreviated_path no
set -g theme_project_dir_length 1
set -g theme_newline_cursor yes

# Pager colors (for less, man pages, etc.)
set -g fish_pager_color_completion d8dee9
set -g fish_pager_color_description 4c566a
set -g fish_pager_color_prefix 88c0d0
set -g fish_pager_color_progress 3b4252
