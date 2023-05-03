import { Block } from 'payload/types';

export const Text: Block = {
    slug: 'Text', // required
    // imageURL: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgxWKuOaUfCbVLf_INH78QXBZ5KR2lELni3wsQCL5fMChxjwah_7Kd08j6p1PXtfgZ93w&usqp=CAU',
    // imageAltText: 'A nice thumbnail image to show what this block looks like',
    fields: [ // required
      {
        name: 'Text',
        type: 'text',
        required: true,
      },
      {
        name: 'Link',
        type: 'text',
        required: true,
      },
    ]
  };