import department from '../routes/department.js';

export type RoleName = 'admin' | 'planner' | 'statist';

export type RolePropertyName = 'isAdmin' | 'isPlanner' | 'isStatist';

export type RoleRequired =
  | 0 // none required
  | -1 // at least one required
  | 1; // role needs to be satisfied

export type User = {
  id: number;
  email: string;
  isAdmin: number;
  isPlanner: number;
  isStatist: number;
  // was like this:
  //[key in RolePropertyName]: RoleRequired;
};

export interface City {
  id: number;
  name: string;
  population?: number;
  country?: string;
}

export interface DepartmentPlanner {
  userId: number;
  departmentId: number;
}

export interface Subject {
  name: string;
  groupSize: number;
  groupCount: number;
  sessionLength: string;
  sessionCount: number;
  area: number;
  programId: number;
  spaceTypeId: number;
  allocRoundId: number;
  isNoisy: boolean;
}

export interface Space {
  name: string;
  area: number;
  info: string;
  personLimit: number;
  buildingId: number;
  availableFrom: string;
  availableTo: string;
  classesFrom: string;
  classesTo: string;
  inUse: number;
  isLowNoise: number;
  spaceTypeId: number;
}

export interface Program {
  id: number;
  name: string;
}

export interface ProgramWithDepartmentId {
  name: string;
  departmentId: number;
}

export interface ProgramAllocation extends Program {
  rooms: AllocatedRoomsByProgramType;
  subjects: AllocatedSubjectsByProgramType;
}

export interface AllocatedSubjectsByProgramType extends Program {
  allocatedHours: number;
  requiredHours: number;
}

export interface AllocatedRoomsByProgramType extends Program {
  allocatedhours: number;
}

export interface RoomsByAllocId {
  id: string;
  name: string;
  allocRoundId: string;
  requiredHours: string;
  spaceTypeId: string;
}
