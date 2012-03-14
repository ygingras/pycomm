# -*- coding: utf-8 -*-

from pprint import pprint
from datetime import datetime

from wtforms import (
    Form, 
    DateTimeField,
    FloatField,
    TextAreaField,
    TextField,
    validators,
    )

class SplitDateField(DateTimeField):
    """ A DateTimeField that gets displayed on two different fields:
    one for the date and one for the time.  This allows rendering
    using a datepicker and recombination of the full field value after
    the validation.

    `time_field`: the name of the field where the time gets stored. 
    """

    def __init__(self, label=None, validators=None, format='%Y-%m-%d %H:%M:%S', 
                 time_field=None, **kwargs):
        super(SplitDateField, self).__init__(label, validators, 
                                             format, **kwargs)
        self.time_field = time_field
        
    
    def post_validate(self, form, validation_stopped):
        if not validation_stopped:
            return
        timef = getattr(form, self.time_field)
        if timef.data:
            hh, mm = timef.data.split(":")
            self.data = datetime(self.data.year, 
                                 self.data.month, 
                                 self.data.day, 
                                 int(hh), 
                                 int(mm))
            self.raw_data = None


class EventAddForm(Form):
    title = TextField('Event Title', [validators.Length(min=4, max=255), 
                                      validators.required()])
    start_date = SplitDateField(
        'Start Date',
        [validators.required()],
        format='%Y-%m-%d',
        time_field="start_time"
        )

    start_time = TextField(
        'Start Time',
        [validators.optional(), validators.regexp(r"\d?\d:|h\d\d")]
        )

    end_date = SplitDateField(
        'End Date',
        [validators.optional()],
        format='%Y-%m-%d', 
        time_field="end_time"
        )

    end_time = TextField(
        'End Time',
        [validators.optional(), validators.regexp(r"\d?\d:|h\d\d")]
        )

    longitude = FloatField('Longitude', [validators.required()])
    latitude = FloatField('Latitude', [validators.required()])

    description = TextAreaField('Event Description', [validators.optional()])

    contact_name = TextField('Contact Name', [validators.required()])
    contact_email = TextField('Contact Email', [validators.required()])

