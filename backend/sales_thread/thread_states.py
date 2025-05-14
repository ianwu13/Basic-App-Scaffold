# IMPORTS HERE

class ThreadState:
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
            "thread_status": self.thread_status,
            "thread_created_at": self.thread_created_at,
        }
    

class ThreadIntake(ThreadState):
    def __init__(self):
        super().__init__()
        self.thread_name = "Intake"
        self.thread_description = "Intake"
        self.thread_status = "Intake"
        self.thread_created_at = "Intake"


class ThreadOutreach(ThreadState):
    def __init__(self):
        super().__init__()
        self.thread_name = "Outreach"
        self.thread_description = "Outreach"
        self.thread_status = "Outreach"
        self.thread_created_at = "Outreach"


class ThreadDiscussion(ThreadState):
    def __init__(self):
        super().__init__()
        self.thread_name = "Discussion"
        self.thread_description = "Discussion"
        self.thread_status = "Discussion"
        self.thread_created_at = "Discussion"


class ThreadClosing(ThreadState):
    def __init__(self):
        super().__init__()
        self.thread_name = "Closing"
        self.thread_description = "Closing"
        self.thread_status = "Closing"
        self.thread_created_at = "Closing"



class ThreadCompleted(ThreadState):
    def __init__(self):
        super().__init__()
        self.thread_name = "Completed"
        self.thread_description = "Completed"
        self.thread_status = "Completed"
        self.thread_created_at = "Completed"
