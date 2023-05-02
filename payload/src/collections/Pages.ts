import { Block, CollectionConfig } from 'payload/types';

const QuoteBlock: Block = {
  slug: 'Quote', // required
  imageURL: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgxWKuOaUfCbVLf_INH78QXBZ5KR2lELni3wsQCL5fMChxjwah_7Kd08j6p1PXtfgZ93w&usqp=CAU',
  imageAltText: 'A nice thumbnail image to show what this block looks like',
  fields: [ // required
    {
      name: 'quoteHeader',
      type: 'text',
      required: true,
    },
    {
      name: 'quoteText',
      type: 'text',
    },
  ]
};

// Example Collection - For reference only, this must be added to payload.config.ts to be used.
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
                QuoteBlock
              ]
            }
          ],
        },
      ],
    }
  ],
}

export default Pages;