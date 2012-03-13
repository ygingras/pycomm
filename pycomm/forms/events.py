# -*- coding: utf-8 -*-

from wtforms import (
    Form, 
    DateTimeField,
    FloatField,
    TextAreaField,
    TextField,
    validators,
    )

class EventAddForm(Form):
    title = TextAreaField('Event Title', [validators.Length(min=4, max=255), 
                                          validators.required()])
    start_date = DateTimeField('Start Date', [validators.required()])
    end_date = DateTimeField('End Date', [validators.optional()])

    longitude = FloatField('Longitude', [validators.required()])
    latitude = FloatField('Latitude', [validators.required()])

    description = TextAreaField('Event Description', [validators.optional()])

    contact_name = TextField('Contact Name', [validators.required()])
    contact_email = TextField('Contact Email', [validators.required()])
