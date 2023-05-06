import { Block } from 'payload/types';

export const Link: Block = {
    slug: 'Link', // required
    // imageURL: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgxWKuOaUfCbVLf_INH78QXBZ5KR2lELni3wsQCL5fMChxjwah_7Kd08j6p1PXtfgZ93w&usqp=CAU',
    // imageAltText: 'A nice thumbnail image to show what this block looks like',
    fields: [ // required
      {
        name: 'text',
        label: 'Text',
        type: 'text',
        required: true,
      },
      {
        name: 'link',
        label: 'Link',
        type: 'text',
        required: true,
      },
    ]
  };