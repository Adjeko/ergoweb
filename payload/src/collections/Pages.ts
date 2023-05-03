import { CollectionConfig } from 'payload/types';
import { HeroBlock } from '../blocks/HeroBlock';

const Pages: CollectionConfig = {
  slug: 'pages',
  access:{
    read: () => true,
  },
  admin: {
    useAsTitle: 'Name',
  },
  fields: [
    {
      name: 'Name',
      type: 'text',
    },
    {
      type: 'tabs',
      tabs: [
        {
          label: 'Seiten Infos',
          description: 'Hier kommen allgemeine Infos zur Seite rein',
          fields: [
            {
              name: 'Titel',
              type: 'text',
              required: true,
            }
          ],
        },
        {
          label: 'Seiten Layout',
          description: 'Hier kommen die Blöcke rein, also der Seiten Inhalt',
          fields: [
            {
              name: 'layout',
              type: 'blocks',
              minRows: 1,
              maxRows: 20,
              blocks: [ 
                HeroBlock
              ]
            }
          ],
        },
      ],
    }
  ],
}

export default Pages;