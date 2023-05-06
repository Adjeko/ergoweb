import { Block } from 'payload/types';
import { Card } from '../components/Card';

export const RowBlock: Block = {
    slug: 'Row', // required
    // imageURL: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgxWKuOaUfCbVLf_INH78QXBZ5KR2lELni3wsQCL5fMChxjwah_7Kd08j6p1PXtfgZ93w&usqp=CAU',
    // imageAltText: 'A nice thumbnail image to show what this block looks like',
    fields: [ // required
      {
        name: 'cards',
        label: 'Cards',
        type: 'blocks',
        blocks: [ 
            Card
        ]
      }
    ]
  };