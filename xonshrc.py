import sys
import subprocess
from pathlib import Path
import local_settings

paths = {
    'darwin': [
        ['/usr', 'local', 'bin'],
        ['/Applications', 'Postgres.app', 'Contents', 'MacOS', 'bin'],
        ['/Library', 'TeX', 'texbin']
    ],
    'win32': [],
    'linux': []
}

git_log_format = '%C(yellow)%h%C(green)%d %Creset%s%C(blue) [%cn]'

global_shortcuts = {
    'git': {
        'gst': ['git', 'status'],
        'ga': ['git', 'add'],
        'gaa': ['git', 'add', '-A'],
        'gca': ['git', 'commit', '-a', '-m'],
        'gcm': ['git', 'checkout', 'master'],
        'gco': ['git', 'checkout'],
        'gpl': ['git', 'pull'],
        'gps': ['git', 'push'],
        'glg': [
            'git', 'log',
            '--pretty=format:"{}"'.format(git_log_format),
            '--decorate'],
    },
    'subl': {
        'st': 'subl',
        'stt': ['subl', './']
    },
}


platform_specific_shortcuts = {
    'darwin': {},
    'win32': {
        'cmd': {
            'ls': ['cmd', '/c', 'dir']
        },
    },
    'linux': {}
}


prompt = (
    '{env_name}{CYAN}{user}@{hostname}{BLUE} {cwd} '
    '{branch_color}{curr_branch}{NO_COLOR} {BLUE}\n{prompt_end}{NO_COLOR}'
)

right_prompt = ''


def path_strings(paths):
    """
    A function to generate a list of strings representing paths.

    Parameters
    ----------
    paths : list
        of lists - each containing a string for every element in the path

    Returns
    -------
    list
        of path strings
    """
    return [str(Path(*path)) for path in paths if Path(*path).exists]

$PATH[:0] = (path_strings(paths[sys.platform]))
$PATH[:0] = (path_strings(local_settings.paths))
$PROMPT = prompt
$RIGHT_PROMPT = right_prompt

shortcuts = global_shortcuts.copy()
shortcuts.update(platform_specific_shortcuts[sys.platform])
for command in shortcuts:
    if !(which @(command)):
        aliases.update(shortcuts[command])

aliases.update(local_settings.shortcuts)

xontrib load autoxsh
xontrib load coreutils
xontrib load xonda

try:
    for key in local_settings.SSH_KEYS:
        key_path = Path(Path.home(), '.ssh', key)
        subprocess.run(['ssh-add', str(key_path)])
except AttributeError:
    pass

try:
    cd @(local_settings.start_folder)
except AttributeError:
    pass
