/* tslint:disable */
/**
 * This file was automatically generated by Payload CMS.
 * DO NOT MODIFY IT BY HAND. Instead, modify your source Payload config,
 * and re-run `payload generate:types` to regenerate this file.
 */

export interface Config {
  collections: {
    users: User;
    pages: Page;
  };
  globals: {};
}
export interface User {
  id: string;
  email?: string;
  resetPasswordToken?: string;
  resetPasswordExpiration?: string;
  loginAttempts?: number;
  lockUntil?: string;
  createdAt: string;
  updatedAt: string;
  password?: string;
}
export interface Page {
  id: string;
  title: string;
  slug: string;
  content?: (
    | {
        text: string;
        link: string;
        id?: string;
        blockName?: string;
        blockType: 'Button';
      }
    | {
        title: string;
        text: string;
        buttons?: {
          text: string;
          link: string;
          id?: string;
          blockName?: string;
          blockType: 'Button';
        }[];
        id?: string;
        blockName?: string;
        blockType: 'Text';
      }
    | {
        title: string;
        text?: string;
        buttons?: {
          text: string;
          link: string;
          id?: string;
          blockName?: string;
          blockType: 'Button';
        }[];
        id?: string;
        blockName?: string;
        blockType: 'Hero';
      }
    | {
        icon: string;
        title: string;
        text: string;
        id?: string;
        blockName?: string;
        blockType: 'Card';
      }
    | {
        cards?: {
          icon: string;
          title: string;
          text: string;
          id?: string;
          blockName?: string;
          blockType: 'Card';
        }[];
        id?: string;
        blockName?: string;
        blockType: 'Row';
      }
  )[];
  createdAt: string;
  updatedAt: string;
}
