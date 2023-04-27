import { CollectionConfig } from 'payload/types';

// Example Collection - For reference only, this must be added to payload.config.ts to be used.
const Pages: CollectionConfig = {
  slug: 'pages',
  admin: {
    useAsTitle: 'Name',
  },
  fields: [
    {
      name: 'Name',
      type: 'text',
    },
  ],
}

export default Pages;