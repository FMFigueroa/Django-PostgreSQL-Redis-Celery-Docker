from __future__ import absolute_import, unicode_literals

# This will make sure the app is always imported when
# Django starts so that shared_task will use this app.

'''Esto asegurará que celery siempre se importe cuando
   Django se inicia, para que las tareas compartidas
   usen esta aplicación correctamente.'''

from .celery import app as celery_app

__all__ = ('celery_app',)