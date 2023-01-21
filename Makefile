SCHEDULER = scheduler
SCHEDULER_SRCS = scheduler.c
SCHEDULER_HDRS = scheduler.h
SCHEDULER_OBJS = $(SCHEDULER_SRCS:%.c=%.o)


CFLAGS = -std=gnu99 -g

default: $(SCHEDULER)

$(SCHEDULER_OBJS): $(SCHEDULER_HDRS)

$(SCHEDULER): $(SCHEDULER_OBJS)
	$(CC) $(CFLAGS) -o $@ $(SCHEDULER_OBJS)

test: $(SCHEDULER)
	./$(SCHEDULER) 1

clean:
	rm -f $(SCHEDULER_OBJS)
	rm -f $(SCHEDULER)