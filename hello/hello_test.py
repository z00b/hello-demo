'''Core test cases for our app.'''
import unittest

from .hello_app import APP


def assert_contains(substring, string):
    '''Assert on the presence of substrings'''
    assert substring in string


class HelloTest(unittest.TestCase):
    '''Specific tests for greetings.'''
    def setUp(self):
        '''Do some setup'''
        self.app = APP.test_client()

    def test_root(self):
        '''Do some testing'''
        assert_contains(b'Hello', self.app.get('/').data)
