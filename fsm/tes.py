from fsm.core import run_command
#
# local_path = '/tmp/frida-server-16.3.0'
#
verbose = True
# remote_path = '/data/local/tmp/frida-server-16.3.0'
# output = run_command(f"adb push {local_path} {remote_path}", verbose)
#
# print(f"Installing frida-server to {remote_path}")


result = run_command('adb devices', verbose)

print(result)
