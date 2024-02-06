/* tslint:disable */
/* eslint-disable */
/**
 * Immich
 * Immich API
 *
 * The version of the OpenAPI document: 1.94.1
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { exists, mapValues } from '../runtime';
/**
 * 
 * @export
 * @interface SystemConfigPasswordLoginDto
 */
export interface SystemConfigPasswordLoginDto {
    /**
     * 
     * @type {boolean}
     * @memberof SystemConfigPasswordLoginDto
     */
    enabled: boolean;
}

/**
 * Check if a given object implements the SystemConfigPasswordLoginDto interface.
 */
export function instanceOfSystemConfigPasswordLoginDto(value: object): boolean {
    let isInstance = true;
    isInstance = isInstance && "enabled" in value;

    return isInstance;
}

export function SystemConfigPasswordLoginDtoFromJSON(json: any): SystemConfigPasswordLoginDto {
    return SystemConfigPasswordLoginDtoFromJSONTyped(json, false);
}

export function SystemConfigPasswordLoginDtoFromJSONTyped(json: any, ignoreDiscriminator: boolean): SystemConfigPasswordLoginDto {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'enabled': json['enabled'],
    };
}

export function SystemConfigPasswordLoginDtoToJSON(value?: SystemConfigPasswordLoginDto | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'enabled': value.enabled,
    };
}
