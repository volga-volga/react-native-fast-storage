# react-native-fast-storage

react-native-fast-storage is a drop in replacement for `AsyncStorage`.

This library is the React Native implementation of https://github.com/Tencent/MMKV.

It provides very fast read and write access.

## Getting started

```bash
yarn add https://github.com/volga-volga/react-native-fast-storage.git
react-native link react-native-fast-storage
```

## Manual ios linking

- Insert into Podfile:
```
pod 'react-native-fast-storage', path: '../node_modules/react-native-fast-storage'
```
- run `pod install` in ios directory


## Usage

```javascript
import FastStorage from 'react-native-fast-storage';

await FastStorage.setItem('key', 'value');
const item = await FastStorage.getItem('key');
```

## Methods

All methods are asynchronous, just like AsyncStorage.

| Prop       |     Params      | Returns  | Description                    |
| :--------- | :-------------: | :------: | :----------------------------- |
| setItem    |  `key`, `value` |  `value` |  Allows to set an item         |
| getItem    |      `key`      |  `value` |  Retrieve the item             |
| removeItem |      `key`      |   null   |  Remove an item from the store |
| clearStore |       none      |   null   |  Clear the entire store        |
