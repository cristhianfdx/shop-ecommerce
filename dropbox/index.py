import dropbox
import sys
import os
from datetime import datetime

from dropbox.files import WriteMode

dbx = dropbox.Dropbox('CZrEli7yVYAAAAAAAAAADWmZ2e6bSTiL8s7aMGAxfk73dBE_uIRfJ_ySMwJRJHfM')
rootdir = '/dropbox_b/backups'


def upload_files():
    for dir, dirs, files in os.walk(rootdir):
        for file in files:
            try:
                file_path = os.path.join(dir, file)
                dest_path = os.path.join('/backups/', file)
                print ('Uploading %s to %s' % (file_path, dest_path))
                with open(file_path, 'rb') as f:
                    dbx.files_upload(f.read(), dest_path, mode=WriteMode('overwrite'))
            except Exception as err:
                print("Failed to upload %s\n%s" % (file, err))

    drop_old_file()


def drop_old_file():
    files = {}
    entries = dbx.files_list_folder(path="/backups").entries

    if len(entries) > 5:

        for entry in entries:
            files[entry.client_modified] = entry.path_lower

        min_date = min(files.keys())
        dbx.files_delete(files[min_date])
    else:
        print("There must be more than one file to delete.")


if __name__ == '__main__':
    upload_files()