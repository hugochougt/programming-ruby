# Adapted from Minero Aoki's net/smtp.rb library

@esmtp = true

begin
  # First try an extended login. If it fails, fall back to a normal login
  if @esmtp
    @command.ehlo(helodom)
  else
    @command.helo(helodom)
  end
rescue ProtocolError
  if @esmtp
    @esmtp = false
    retry # retry once
  else    # if fails again
    raise # raise exception
  end
end
