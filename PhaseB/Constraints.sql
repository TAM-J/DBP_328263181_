ALTER TABLE Brigade
ADD CONSTRAINT chk_NumberOfBattalions CHECK (NumberOfBattalions > 0)
WAIT 60;

ALTER TABLE Soldier
ADD CONSTRAINT chk_DeploymentDate CHECK (DeploymentDate >= ADD_MONTHS(BirthDate, 18 * 12))
NOVALIDATE;


ALTER TABLE Platoon
ADD CONSTRAINT chk_NumberOfSquads CHECK (NumberOfSquads >= 3)
WAIT 60;
