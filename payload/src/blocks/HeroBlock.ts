import { Block } from 'payload/types';
import { Button } from '../components/Button';

export const HeroBlock: Block = {
    slug: 'Hero', // required
    // imageURL: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgxWKuOaUfCbVLf_INH78QXBZ5KR2lELni3wsQCL5fMChxjwah_7Kd08j6p1PXtfgZ93w&usqp=CAU',
    // imageAltText: 'A nice thumbnail image to show what this block looks like',
    fields: [ // required
      {
        name: 'title',
        label: 'Titel',
        type: 'text',
        required: true,
      },
      {
        name: 'text',
        label: 'Beschreibung',
        type: 'text',
      },
      {
        name: 'buttons',
        label: 'Buttons',
        type: 'blocks',
        blocks: [ 
            Button
        ]
      }
    ]
  };