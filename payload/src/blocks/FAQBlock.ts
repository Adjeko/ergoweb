import { Block } from 'payload/types';
import { Button } from '../components/Button';

export const FAQBlock: Block = {
    slug: 'FAQ', // required
    // imageURL: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgxWKuOaUfCbVLf_INH78QXBZ5KR2lELni3wsQCL5fMChxjwah_7Kd08j6p1PXtfgZ93w&usqp=CAU',
    // imageAltText: 'A nice thumbnail image to show what this block looks like',
    fields: [ // required
      {
        name: 'Titel',
        type: 'text',
        required: true,
      },
      {
        name: 'Beschreibung',
        type: 'text',
      },
      {
        name: 'Buttons',
        type: 'blocks',
        minRows: 1,
        maxRows: 3,
        blocks: [ 
            Button
        ]
      }
    ]
  };