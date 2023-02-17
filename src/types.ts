export enum USER_ROLES {
    NORMAL = "NORMAL",
    ADMIN = "ADMIN"
}

export interface TokenPayload {
    id: string,
	name: string,
    role: USER_ROLES
}

export interface PlaylistModel {
    id: string,
    name: string,
    likes: number,
    dislikes: number,
    createdAt: string,
    updatedAt: string,
    creator: {
        id: string,
        name: string
    }
}

export interface UserDB {
    id: string,
    name: string, 
    email: string, 
    password: string, 
    role: USER_ROLES, 
    created_at: string
}