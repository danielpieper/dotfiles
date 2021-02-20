local g = vim.g

g.startify_session_dir = '~/.config/nvim/session'
g.startify_session_autoload = 1
g.startify_session_delete_buffers = 1

g.startify_change_to_vcs_root = 1
g.startify_session_persistence = 1
g.startify_change_to_dir = 1

g.startify_lists = {
    {type = 'sessions', header = {'   Sessions'}},
    {type = 'dir', header = {'   MRU '}},
    {type = 'files', header = {'   MRU *'}},
}
