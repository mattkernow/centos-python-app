from app.task import query_database


def run():
    print('adding to queue')
    for num in range(10000):
        queue_id = query_database.delay()
        print(queue_id)

if __name__ == '__main__':
    run()
