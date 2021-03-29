#!/usr/bin/env python

import base64
import getpass
import sys
import xml.etree.ElementTree as Et
import urllib
import urllib2

reload(sys)
sys.setdefaultencoding('utf-8')

JSS_URL = 'https://your.jss.com'
JSS_USER = str(raw_input('Username: '))
JSS_PASS = getpass.getpass('Password: ')
AUTH = base64.b64encode(JSS_USER + ':' + JSS_PASS)

def get(path):
    request = urllib2.Request(JSS_URL + urllib.quote(path))
    request.add_header('Authorization', 'Basic ' + AUTH)
    response = urllib2.urlopen(request)
    return response.read()

print("Reading all JSS categories...")
response = get('/JSSResource/categories')
CATEGORIES = Et.fromstring(response)

print("Reading all policy IDs from list of categories...")
POLICIES = []
for category in CATEGORIES.findall('category'):
    response = get('/JSSResource/policies/category/' + category.findtext('name'))
    data = Et.fromstring(response)
    POLICIES.extend([policy.findtext('id') for policy in data.findall('policy')])

POLICIES.sort()

ENABLED = []
DISABLED = []
print("Reading all policies (this may take several minutes)...\n")
for ID in POLICIES:
    response = get('/JSSResource/policies/id/' + ID)
    policy = Et.fromstring(response)
    if policy.findtext('general/enabled') == 'true':
        ENABLED.append(policy.findtext('general/name'))
    else:
        DISABLED.append(policy.findtext('general/name'))

ENABLED.sort()
DISABLED.sort()

print("ENABLED Policies:")
print('  \n'.join(ENABLED) + '\n')

print("DISABLED Policies:")
print('  \n'.join(DISABLED) + '\n')