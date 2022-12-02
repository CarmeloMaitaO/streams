source-directory=`pwd`
src=$(source-directory)/streams.sh
target-directory=~/.local/bin
target=$(target-directory)/streams.sh

install: clean
	mkdir -p $(target-directory)
	ln -s $(src) $(target)
clean:
	rm -f $(target)

.PHONY: install clean

