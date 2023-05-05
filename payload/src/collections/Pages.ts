import { CollectionConfig } from 'payload/types';
import { Button } from '../components/Button';

const Pages: CollectionConfig = {
  slug: 'pages',
  access:{
    read: () => true,
  },
  admin: {
    useAsTitle: 'title',
  },
  fields: [
    {
      type: 'tabs',
      tabs: [
        {
          label: 'Meta',
          description: 'Hier kommen allgemeine Infos zur Seite rein',
          fields: [
            {
              name: 'title',
              label: 'Titel',
              type: 'text',
              required: true,
            },
            {
              name: 'slug',
              label: 'Url Pfad',
              type: 'text',
              required: true,
            }
          ],
        },
        {
          label: 'Inhalt',
          description: 'Hier kommen die Blöcke rein, also der Seiten Inhalt',
          fields: [
            {
              name: 'content',
              label: 'Inhalt',
              type: 'blocks',
              blocks: [ 
                Button
              ]
            }
          ],
        },
      ],
    }
  ],
}

export default Pages;