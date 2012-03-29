##
# Say something to the world
#
# Params:
# - text    {String}  What to say
# - count   {Integer} Number of times to say (optional)
# - options {Hash}    Options used for text (default: {})
#
# Options (options):
# - caps {Boolean} Say with all caps (optional)
# - font {String}  Font for printing (optional, default: "Comic Sans")
#
# Examples:
#
#     say('Hello', 2)
#     # => 'Hello world\nHello world'
#
# TODO:
# - Refactor this shit
# - Make something else
#
# See also:
# - LoremIpsum#generator
#
# Raises:
# - {WorldBusyError} if world busy
# - {FontError} if font not available
#
# Returns: {String}
#
def say(text, count, options={})
  # Saying process
end