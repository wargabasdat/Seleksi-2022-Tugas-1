# main program API

import uvicorn
import os

if __name__ == "__main__":
    uvicorn.run("app:app", host="127.0.0.1", port=int(os.environ.get('env_PORT')), reload=True)