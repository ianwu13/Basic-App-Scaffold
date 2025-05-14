class LeadThread:
    def __init__(self):
        self.thread_id = None
        self.thread_name = None
        self.thread_description = None
        self.thread_status = None
        self.thread_created_at = None

    def to_json(self):
        return {
            "thread_id": self.thread_id,
            "thread_name": self.thread_name,
            "thread_description": self.thread_description,
        }
