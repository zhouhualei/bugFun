# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([
  {
    uid: "yuw3",
    name: "Lucent Wang"
  },
  {
    uid: "warzhou",
    name: "Warren Zhou"
  },
  {
    uid: "yangjian",
    name: "Yang Jian"
  },
  {
    uid: "yiqian",
    name: "Yin Qian"
  },
  {
    uid: "xuluo2",
    name: "Xu Luo"
  },
  {
    uid: "pozhang",
    name: "Polly Zhang"
  },
  {
    uid: "jinghuan",
    name: "Jing Huang"
  }
])

user_yuw3 = users[0]
user_warzhou = users[1]
user_yangjian = users[2]
user_yiqian = users[3]
user_xuluo2 = users[4]
user_pozhang = users[5]
user_jinghuan = users[6]


bugs = Bug.create([
  # {
  #   title: "",
  #   description: "    description: "Steps:
# 1. Login to egenie with PDT admin role;
# 2. Select an item which is pending PDT approval Xaas pid and reassign to a new ID;
# 3. New approval ID login site and select the PID, click Approve;
# 4. Check the status of this PID. 

# Expected Result:
# Should be approved successfully, and the workflow status should be PENDING APPROVAL BUC

# Actual Result:
# The item not be approved successfully, the workflow status still be PENDING APPROVAL PDT

# Note:
# Reassigned from yunluo to arunrama, then \"arunrama\" try to do approve.

# Notes: this issue also exist for all ICCs under PDT Admin role and HW/SW ICCs under PDT SJ role",
# ",
  #   severity: "",
  #   submiter: user_pozhang,
  #   assignee: user_yuw3,
  #   status: "New",
  #   views: ,
  #   rating: ,
  #   project: "",
  #   track: "",
  #   release: "Q1FY16"
  # },
  {
    title: "group sync: some problems with update sync and initial sync",
    description: "Us3249:[Unfinished][Continued] Ensure usergroup sync released for Feb release",
    severity: "S1",
    submiter: user_jinghuan,
    assignee: user_yuw3,
    status: "Closed",
    views: 15,
    track: "Access & Identity",
    project: "cepm",
    release: "Q1FY16"
  },
  {
    title: "UI group: in entity group, click \"assign role\" or \"assign resource\", role or resource",
    description: "US3675: [Unfinished] [Continued] [Continued] [Continued] Ensure usergroup sync released for Feb release",
    severity: "S2",
    submiter: user_jinghuan,
    assignee: user_yuw3,
    status: "Closed",
    views: 17,
    track: "Access & Identity",
    project: "cepm",
    release: "Q1FY16"
  },
  {
    title: "User sync:import a user in App level, this user's status can't synced",
    description: "US3675: [Unfinished] [Continued] [Continued] [Continued] Ensure usergroup sync released for Feb release",
    severity: "S3",
    submiter: user_jinghuan,
    assignee: nil,
    status: "New",
    views: 3,
    track: "Access & Identity",
    project: "cepm",
    release: "Q1FY16"
  },
  {
    title: "Customer Data Privacy Access Data on ceratain MEU contracts are being wrongfully viewed by certain partners",
    description: "Steps:
1. Login to egenie with PDT admin role;
2. Select an item which is pending PDT approval Xaas pid and reassign to a new ID;
3. New approval ID login site and select the PID, click Approve;
4. Check the status of this PID. 

Expected Result:
Should be approved successfully, and the workflow status should be PENDING APPROVAL BUC

Actual Result:
The item not be approved successfully, the workflow status still be PENDING APPROVAL PDT

Note:
Reassigned from yunluo to arunrama, then \"arunrama\" try to do approve.

Notes: this issue also exist for all ICCs under PDT Admin role and HW/SW ICCs under PDT SJ role",
    severity: "S1",
    submiter: user_pozhang,
    assignee: user_yuw3,
    status: "New",
    views: 24,
    project: "lcs",
    track: "Access & Identity",
    release: "Q1FY16"
  },
  {
    title: "Q1FY16_SCM_RMA_Warranty information is not consistently updated in IB for RMA shipments.",
    description: "Steps:
1. Login to egenie with PDT admin role;
2. Select an item which is pending PDT approval Xaas pid and reassign to a new ID;
3. New approval ID login site and select the PID, click Approve;
4. Check the status of this PID. 

Expected Result:
Should be approved successfully, and the workflow status should be PENDING APPROVAL BUC

Actual Result:
The item not be approved successfully, the workflow status still be PENDING APPROVAL PDT

Note:
Reassigned from yunluo to arunrama, then \"arunrama\" try to do approve.

Notes: this issue also exist for all ICCs under PDT Admin role and HW/SW ICCs under PDT SJ role",
    severity: "S2",
    submiter: user_pozhang,
    assignee: user_yuw3,
    status: "New",
    views: 13,
    project: "lcs",
    track: "Service Contract Management",
    release: "Q1FY16"
  },
  {
    title: "Q4FY15_B2B requests are stuck in inprogress staus",
    description: "Steps:
1. Login to egenie with PDT admin role;
2. Select an item which is pending PDT approval Xaas pid and reassign to a new ID;
3. New approval ID login site and select the PID, click Approve;
4. Check the status of this PID. 

Expected Result:
Should be approved successfully, and the workflow status should be PENDING APPROVAL BUC

Actual Result:
The item not be approved successfully, the workflow status still be PENDING APPROVAL PDT

Note:
Reassigned from yunluo to arunrama, then \"arunrama\" try to do approve.

Notes: this issue also exist for all ICCs under PDT Admin role and HW/SW ICCs under PDT SJ role",
    severity: "S3",
    submiter: user_pozhang,
    assignee: nil,
    status: "New",
    views: 3,
    project: "lcs",
    track: "SSM-B2B-CSCC",
    release: "Q1FY16"
  },
  {
    title: "Fix RMA logic in Coverage Rate - Need to first verify the RMA dates being retrieved from EDW",
    description: "Steps:
1. Login to egenie with PDT admin role;
2. Select an item which is pending PDT approval Xaas pid and reassign to a new ID;
3. New approval ID login site and select the PID, click Approve;
4. Check the status of this PID. 

Expected Result:
Should be approved successfully, and the workflow status should be PENDING APPROVAL BUC

Actual Result:
The item not be approved successfully, the workflow status still be PENDING APPROVAL PDT

Note:
Reassigned from yunluo to arunrama, then \"arunrama\" try to do approve.

Notes: this issue also exist for all ICCs under PDT Admin role and HW/SW ICCs under PDT SJ role",
    severity: "S1",
    submiter: user_pozhang,
    assignee: nil,
    status: "New",
    views: 56,
    project: "ccs",
    track: "SSM-PMC",
    release: "Q1FY16"
  },
  {
    title: "Proactive CSCC quotes flagging for further order change hold application",
    description: "Steps:
1. Login to egenie with PDT admin role;
2. Select an item which is pending PDT approval Xaas pid and reassign to a new ID;
3. New approval ID login site and select the PID, click Approve;
4. Check the status of this PID. 

Expected Result:
Should be approved successfully, and the workflow status should be PENDING APPROVAL BUC

Actual Result:
The item not be approved successfully, the workflow status still be PENDING APPROVAL PDT

Note:
Reassigned from yunluo to arunrama, then \"arunrama\" try to do approve.

Notes: this issue also exist for all ICCs under PDT Admin role and HW/SW ICCs under PDT SJ role",
    severity: "S3",
    submiter: user_pozhang,
    assignee: user_xuluo2,
    status: "New",
    views: 5,
    project: "lcs",
    track: "1 Tier-Quoting & Ordering",
    release: "Q1FY16"
  },
  {
    title: "Q1FY16 Additional Capacity Scope - Set Common End Date/Duration Across all Lines on a Quote",
    description: "Steps:
1. Login to egenie with PDT admin role;
2. Select an item which is pending PDT approval Xaas pid and reassign to a new ID;
3. New approval ID login site and select the PID, click Approve;
4. Check the status of this PID. 

Expected Result:
Should be approved successfully, and the workflow status should be PENDING APPROVAL BUC

Actual Result:
The item not be approved successfully, the workflow status still be PENDING APPROVAL PDT

Note:
Reassigned from yunluo to arunrama, then \"arunrama\" try to do approve.

Notes: this issue also exist for all ICCs under PDT Admin role and HW/SW ICCs under PDT SJ role",
    severity: "S3",
    submiter: user_pozhang,
    assignee: user_yuw3,
    status: "New",
    views: 7,
    project: "ccs",
    track: "2 Tier-Quoting & Ordering",
    release: "Q1FY16"
  },
  {
    title: "Q1FY16 - ESIT - SVE is not responding CA PA in TS3CTS",
    description: "Steps:
1. Login to egenie with PDT admin role;
2. Select an item which is pending PDT approval Xaas pid and reassign to a new ID;
3. New approval ID login site and select the PID, click Approve;
4. Check the status of this PID. 

Expected Result:
Should be approved successfully, and the workflow status should be PENDING APPROVAL BUC

Actual Result:
The item not be approved successfully, the workflow status still be PENDING APPROVAL PDT

Note:
Reassigned from yunluo to arunrama, then \"arunrama\" try to do approve.

Notes: this issue also exist for all ICCs under PDT Admin role and HW/SW ICCs under PDT SJ role",
    severity: "S3",
    submiter: user_pozhang,
    assignee: user_yiqian,
    status: "New",
    views: 8,
    project: "ccs",
    track: "Service Contract Management",
    release: "Q1FY16"
  },
  {
    title: "Export Complaince Decomission in CSCC application",
    description: "Steps:
1. Login to egenie with PDT admin role;
2. Select an item which is pending PDT approval Xaas pid and reassign to a new ID;
3. New approval ID login site and select the PID, click Approve;
4. Check the status of this PID. 

Expected Result:
Should be approved successfully, and the workflow status should be PENDING APPROVAL BUC

Actual Result:
The item not be approved successfully, the workflow status still be PENDING APPROVAL PDT

Note:
Reassigned from yunluo to arunrama, then \"arunrama\" try to do approve.

Notes: this issue also exist for all ICCs under PDT Admin role and HW/SW ICCs under PDT SJ role",
    severity: "S3",
    submiter: user_pozhang,
    assignee: nil,
    status: "New",
    views: 3,
    project: "ccs",
    track: "Quoting",
    release: "Q1FY16"
  },
  {
    title: "Pega Integration With CSCC",
    description: "Steps:
1. Login to egenie with PDT admin role;
2. Select an item which is pending PDT approval Xaas pid and reassign to a new ID;
3. New approval ID login site and select the PID, click Approve;
4. Check the status of this PID. 

Expected Result:
Should be approved successfully, and the workflow status should be PENDING APPROVAL BUC

Actual Result:
The item not be approved successfully, the workflow status still be PENDING APPROVAL PDT

Note:
Reassigned from yunluo to arunrama, then \"arunrama\" try to do approve.

Notes: this issue also exist for all ICCs under PDT Admin role and HW/SW ICCs under PDT SJ role",
    severity: "S2",
    submiter: user_pozhang,
    assignee: user_yuw3,
    status: "New",
    views: 18,
    project: "ccs",
    track: "Quoting",
    release: "Q1FY16"
  },
  {
    title: "Request to remove two jobs in Tidal as we no longer need them after Q4 release",
    description: "Steps:
1. Login to egenie with PDT admin role;
2. Select an item which is pending PDT approval Xaas pid and reassign to a new ID;
3. New approval ID login site and select the PID, click Approve;
4. Check the status of this PID. 

Expected Result:
Should be approved successfully, and the workflow status should be PENDING APPROVAL BUC

Actual Result:
The item not be approved successfully, the workflow status still be PENDING APPROVAL PDT

Note:
Reassigned from yunluo to arunrama, then \"arunrama\" try to do approve.

Notes: this issue also exist for all ICCs under PDT Admin role and HW/SW ICCs under PDT SJ role",
    severity: "S1",
    submiter: user_pozhang,
    assignee: user_yuw3,
    status: "Fixed",
    views: 8,
    project: "ccs",
    track: "Service Supply Chain",
    release: "Q1FY16"
  },
  {
    title: "Requesting to run the Concurrent jobs on TS1CTS",
    description: "Steps:
1. Login to egenie with PDT admin role;
2. Select an item which is pending PDT approval Xaas pid and reassign to a new ID;
3. New approval ID login site and select the PID, click Approve;
4. Check the status of this PID. 

Expected Result:
Should be approved successfully, and the workflow status should be PENDING APPROVAL BUC

Actual Result:
The item not be approved successfully, the workflow status still be PENDING APPROVAL PDT

Note:
Reassigned from yunluo to arunrama, then \"arunrama\" try to do approve.

Notes: this issue also exist for all ICCs under PDT Admin role and HW/SW ICCs under PDT SJ role",
    severity: "S2",
    submiter: user_pozhang,
    assignee: user_warzhou,
    status: "Fixed",
    views: 2,
    project: "ccs",
    track: "Service Supply Chain",
    release: "Q1FY16"
  },
  {
    title: "Configuration setups for Service Contracts",
    description: "Steps:
1. Login to egenie with PDT admin role;
2. Select an item which is pending PDT approval Xaas pid and reassign to a new ID;
3. New approval ID login site and select the PID, click Approve;
4. Check the status of this PID. 

Expected Result:
Should be approved successfully, and the workflow status should be PENDING APPROVAL BUC

Actual Result:
The item not be approved successfully, the workflow status still be PENDING APPROVAL PDT

Note:
Reassigned from yunluo to arunrama, then \"arunrama\" try to do approve.

Notes: this issue also exist for all ICCs under PDT Admin role and HW/SW ICCs under PDT SJ role",
    severity: "S1",
    submiter: user_pozhang,
    assignee: user_yuw3,
    status: "Fixed",
    views: 9,
    project: "ccs",
    track: "Service Supply Chain",
    release: "Q1FY16"
  },
  {
    title: "TCA: Geography Hierarchy changes",
    description: "Steps:
1. Login to egenie with PDT admin role;
2. Select an item which is pending PDT approval Xaas pid and reassign to a new ID;
3. New approval ID login site and select the PID, click Approve;
4. Check the status of this PID. 

Expected Result:
Should be approved successfully, and the workflow status should be PENDING APPROVAL BUC

Actual Result:
The item not be approved successfully, the workflow status still be PENDING APPROVAL PDT

Note:
Reassigned from yunluo to arunrama, then \"arunrama\" try to do approve.

Notes: this issue also exist for all ICCs under PDT Admin role and HW/SW ICCs under PDT SJ role",
    severity: "S1",
    submiter: user_pozhang,
    assignee: user_yuw3,
    status: "Fixed",
    views: 3,
    project: "ccs",
    track: "Service Supply Chain",
    release: "Q1FY16"
  },
  {
    title: "Request to schedule IBPA jobs in TS4CTS environment",
    description: "Steps:
1. Login to egenie with PDT admin role;
2. Select an item which is pending PDT approval Xaas pid and reassign to a new ID;
3. New approval ID login site and select the PID, click Approve;
4. Check the status of this PID. 

Expected Result:
Should be approved successfully, and the workflow status should be PENDING APPROVAL BUC

Actual Result:
The item not be approved successfully, the workflow status still be PENDING APPROVAL PDT

Note:
Reassigned from yunluo to arunrama, then \"arunrama\" try to do approve.

Notes: this issue also exist for all ICCs under PDT Admin role and HW/SW ICCs under PDT SJ role",
    severity: "S1",
    submiter: user_pozhang,
    assignee: user_yuw3,
    status: "Fixed",
    views: 6,
    project: "ccs",
    track: "Service Supply Chain",
    release: "Q1FY16"
  },
  {
    title: "Q2O CONCURRENT PROGRAM SCHEDULING IN TS1CTS(Q1FY16 )",
    description: "Steps:
1. Login to egenie with PDT admin role;
2. Select an item which is pending PDT approval Xaas pid and reassign to a new ID;
3. New approval ID login site and select the PID, click Approve;
4. Check the status of this PID. 

Expected Result:
Should be approved successfully, and the workflow status should be PENDING APPROVAL BUC

Actual Result:
The item not be approved successfully, the workflow status still be PENDING APPROVAL PDT

Note:
Reassigned from yunluo to arunrama, then \"arunrama\" try to do approve.

Notes: this issue also exist for all ICCs under PDT Admin role and HW/SW ICCs under PDT SJ role",
    severity: "S1",
    submiter: user_pozhang,
    assignee: user_yuw3,
    status: "Fixed",
    views: 6,
    project: "ccs",
    track: "Service Supply Chain",
    release: "Q1FY16"
  },
  {
    title: "request you to assign approval role to my ID for Inventory Manager(INternal Order Creation) - internal requisition approval",
    description: "Steps:
1. Login to egenie with PDT admin role;
2. Select an item which is pending PDT approval Xaas pid and reassign to a new ID;
3. New approval ID login site and select the PID, click Approve;
4. Check the status of this PID. 

Expected Result:
Should be approved successfully, and the workflow status should be PENDING APPROVAL BUC

Actual Result:
The item not be approved successfully, the workflow status still be PENDING APPROVAL PDT

Note:
Reassigned from yunluo to arunrama, then \"arunrama\" try to do approve.

Notes: this issue also exist for all ICCs under PDT Admin role and HW/SW ICCs under PDT SJ role",
    severity: "S1",
    submiter: user_pozhang,
    assignee: user_yuw3,
    status: "Fixed",
    views: 35,
    project: "ccs",
    track: "Service Supply Chain",
    release: "Q1FY16"
  },
  {
    title: "Q1FY16 - C3 LSS - APC Setup Changes",
    description: "Steps:
1. Login to egenie with PDT admin role;
2. Select an item which is pending PDT approval Xaas pid and reassign to a new ID;
3. New approval ID login site and select the PID, click Approve;
4. Check the status of this PID. 

Expected Result:
Should be approved successfully, and the workflow status should be PENDING APPROVAL BUC

Actual Result:
The item not be approved successfully, the workflow status still be PENDING APPROVAL PDT

Note:
Reassigned from yunluo to arunrama, then \"arunrama\" try to do approve.

Notes: this issue also exist for all ICCs under PDT Admin role and HW/SW ICCs under PDT SJ role",
    severity: "S1",
    submiter: user_pozhang,
    assignee: user_yuw3,
    status: "Fixed",
    views: 68,
    project: "ccs",
    track: "Service Supply Chain",
    release: "Q1FY16"
  },
  {
    title: "APC TD Q1FY16 --Quoting and Ordering",
    description: "Steps:
1. Login to egenie with PDT admin role;
2. Select an item which is pending PDT approval Xaas pid and reassign to a new ID;
3. New approval ID login site and select the PID, click Approve;
4. Check the status of this PID. 

Expected Result:
Should be approved successfully, and the workflow status should be PENDING APPROVAL BUC

Actual Result:
The item not be approved successfully, the workflow status still be PENDING APPROVAL PDT

Note:
Reassigned from yunluo to arunrama, then \"arunrama\" try to do approve.

Notes: this issue also exist for all ICCs under PDT Admin role and HW/SW ICCs under PDT SJ role",
    severity: "S1",
    submiter: user_pozhang,
    assignee: user_yuw3,
    status: "Fixed",
    views: 1,
    project: "ccs",
    track: "Service Supply Chain",
    release: "Q1FY16"
  },
  {
    title: "Heatlh Page - Risk dropdown does not display, spinner hangs",
    description: "Steps:
1. Login to egenie with PDT admin role;
2. Select an item which is pending PDT approval Xaas pid and reassign to a new ID;
3. New approval ID login site and select the PID, click Approve;
4. Check the status of this PID. 

Expected Result:
Should be approved successfully, and the workflow status should be PENDING APPROVAL BUC

Actual Result:
The item not be approved successfully, the workflow status still be PENDING APPROVAL PDT

Note:
Reassigned from yunluo to arunrama, then \"arunrama\" try to do approve.

Notes: this issue also exist for all ICCs under PDT Admin role and HW/SW ICCs under PDT SJ role",
    severity: "S2",
    submiter: user_pozhang,
    assignee: user_yuw3,
    status: "Fixed",
    views: 8,
    project: "ccs",
    track: "Service Supply Chain",
    release: "Q1FY16"
  },
  {
    title: "Need Password for DV1DMP schemas for devlopment task",
    description: "Steps:
1. Login to egenie with PDT admin role;
2. Select an item which is pending PDT approval Xaas pid and reassign to a new ID;
3. New approval ID login site and select the PID, click Approve;
4. Check the status of this PID. 

Expected Result:
Should be approved successfully, and the workflow status should be PENDING APPROVAL BUC

Actual Result:
The item not be approved successfully, the workflow status still be PENDING APPROVAL PDT

Note:
Reassigned from yunluo to arunrama, then \"arunrama\" try to do approve.

Notes: this issue also exist for all ICCs under PDT Admin role and HW/SW ICCs under PDT SJ role",
    severity: "S1",
    submiter: user_pozhang,
    assignee: user_yuw3,
    status: "Assigned",
    views: 78,
    project: "ccs",
    track: "Service Supply Chain",
    release: "Q1FY16"
  },
  {
    title: "DV1DMP connectivity and performance issue",
    description: "Steps:
1. Login to egenie with PDT admin role;
2. Select an item which is pending PDT approval Xaas pid and reassign to a new ID;
3. New approval ID login site and select the PID, click Approve;
4. Check the status of this PID. 

Expected Result:
Should be approved successfully, and the workflow status should be PENDING APPROVAL BUC

Actual Result:
The item not be approved successfully, the workflow status still be PENDING APPROVAL PDT

Note:
Reassigned from yunluo to arunrama, then \"arunrama\" try to do approve.

Notes: this issue also exist for all ICCs under PDT Admin role and HW/SW ICCs under PDT SJ role",
    severity: "S1",
    submiter: user_pozhang,
    assignee: user_yuw3,
    status: "Assigned",
    views: 88,
    project: "ccs",
    track: "Service Supply Chain",
    release: "Q1FY16"
  },
  {
    title: "Hi Team, We have found performance issue with one of our scripts where we are trying to alter a pl/sql object type. PFB the details Environment: Ts1g2c Session and Process Information ------------------------------ SID",
    description: "Steps:
1. Login to egenie with PDT admin role;
2. Select an item which is pending PDT approval Xaas pid and reassign to a new ID;
3. New approval ID login site and select the PID, click Approve;
4. Check the status of this PID. 

Expected Result:
Should be approved successfully, and the workflow status should be PENDING APPROVAL BUC

Actual Result:
The item not be approved successfully, the workflow status still be PENDING APPROVAL PDT

Note:
Reassigned from yunluo to arunrama, then \"arunrama\" try to do approve.

Notes: this issue also exist for all ICCs under PDT Admin role and HW/SW ICCs under PDT SJ role",
    severity: "S1",
    submiter: user_pozhang,
    assignee: user_yuw3,
    status: "Assigned",
    views: 88,
    project: "ccs",
    track: "Service Supply Chain",
    release: "Q1FY16"
  },
  {
    title: "Poor performance of query",
    description: "Steps:
1. Login to egenie with PDT admin role;
2. Select an item which is pending PDT approval Xaas pid and reassign to a new ID;
3. New approval ID login site and select the PID, click Approve;
4. Check the status of this PID. 

Expected Result:
Should be approved successfully, and the workflow status should be PENDING APPROVAL BUC

Actual Result:
The item not be approved successfully, the workflow status still be PENDING APPROVAL PDT

Note:
Reassigned from yunluo to arunrama, then \"arunrama\" try to do approve.

Notes: this issue also exist for all ICCs under PDT Admin role and HW/SW ICCs under PDT SJ role",
    severity: "S2",
    submiter: user_pozhang,
    assignee: user_yuw3,
    status: "Assigned",
    views: 38,
    project: "ccs",
    track: "Service Supply Chain",
    release: "Q1FY16"
  },
  {
    title: "",
    description: "Steps:
1. Login to egenie with PDT admin role;
2. Select an item which is pending PDT approval Xaas pid and reassign to a new ID;
3. New approval ID login site and select the PID, click Approve;
4. Check the status of this PID. 

Expected Result:
Should be approved successfully, and the workflow status should be PENDING APPROVAL BUC

Actual Result:
The item not be approved successfully, the workflow status still be PENDING APPROVAL PDT

Note:
Reassigned from yunluo to arunrama, then \"arunrama\" try to do approve.

Notes: this issue also exist for all ICCs under PDT Admin role and HW/SW ICCs under PDT SJ role",
    severity: "S1",
    submiter: user_pozhang,
    assignee: user_yuw3,
    status: "Assigned",
    views: 98,
    project: "ccs",
    track: "Service Supply Chain",
    release: "Q1FY16"
  },
  {
    title: "Q1FY16_ON Premise-SIT_CREDIT Check_MAX_Global Credit Limit Bill To Association against patner user.",
    description: "Steps:
1. Login to egenie with PDT admin role;
2. Select an item which is pending PDT approval Xaas pid and reassign to a new ID;
3. New approval ID login site and select the PID, click Approve;
4. Check the status of this PID. 

Expected Result:
Should be approved successfully, and the workflow status should be PENDING APPROVAL BUC

Actual Result:
The item not be approved successfully, the workflow status still be PENDING APPROVAL PDT

Note:
Reassigned from yunluo to arunrama, then \"arunrama\" try to do approve.

Notes: this issue also exist for all ICCs under PDT Admin role and HW/SW ICCs under PDT SJ role",
    severity: "S1",
    submiter: user_pozhang,
    assignee: user_yuw3,
    status: "Assigned",
    views: 78,
    project: "ccs",
    track: "Service Supply Chain",
    release: "Q1FY16"
  }
])

bug1 = bugs[0]
bug2 = bugs[1]
bug3 = bugs[2]
bug4 = bugs[3]
bug5 = bugs[4]
bug6 = bugs[5]
bug7 = bugs[6]
bug8 = bugs[7]
bug9 = bugs[8]
bug10 = bugs[9]
bug11 = bugs[10]
bug12 = bugs[11]
bug13 = bugs[12]
bug14 = bugs[13]
bug15 = bugs[14]
bug16 = bugs[15]
bug17 = bugs[16]
bug18 = bugs[17]
bug19 = bugs[18]
bug20 = bugs[19]
bug21 = bugs[20]
bug22 = bugs[21]
bug23 = bugs[22]
bug24 = bugs[23]
bug25 = bugs[24]
bug26 = bugs[25]
bug27 = bugs[26]
bug28 = bugs[27]

comments = Comment.create([
  {
    content: "I am not sure of this bug. Is this related to PLSQL?",
    author: user_yuw3,
    bug: bugs[0]
  },
  {
    content: "Confirmed with Yang Jian, he is an DB expert.",
    author: user_warzhou,
    bug: bugs[0]
  },
  {
    content: "I think there is some inconsistence in your data.",
    author: user_yangjian,
    bug: bugs[0]
  },
  {
    content: "I see, Thanks, Jian, I know how to fix it now.",
    author: user_yuw3,
    bug: bugs[0]
  }
])


user_yuw3.followings = [bug1, bug2, bug4, bug6, bug9]
user_warzhou.followings = [bug1, bug8, bug16, bug18, bug16]
user_yangjian.followings = [bug1, bug3, bug7, bug13, bug15]
user_yiqian.followings = [bug1, bug7, bug14, bug21, bug28]
user_xuluo2.followings = [bug1, bug23, bug24, bug26, bug27]

user_yuw3.bookmarkings = [bug1, bug13, bug15, bug16, bug18, bug20]
user_warzhou.bookmarkings = [bug1, bug3, bug5, bug7, bug9, bug10]
user_yangjian.bookmarkings = [bug1, bug6, bug7, bug22, bug23, bug24]
user_yiqian.bookmarkings = [bug1, bug2, bug5, bug16, bug17, bug19]
user_xuluo2.bookmarkings = [bug1, bug2, bug7, bug8, bug9, bug10]


user_yuw3.save
user_warzhou.save
user_yangjian.save
user_yiqian.save
user_xuluo2.save

rating2 = RatingRelationship.create({
  user: user_warzhou,
  bug: bug1,
  score: 5
})

rating3 = RatingRelationship.create({
  user: user_yangjian,
  bug: bug1,
  score: 3
})

rating4 = RatingRelationship.create({
  user: user_yiqian,
  bug: bug1,
  score: 5
})

rating5 = RatingRelationship.create({
  user: user_xuluo2,
  bug: bug1,
  score: 4
})



rating6 = RatingRelationship.create({
  user: user_yuw3,
  bug: bug2,
  score: 3
})

rating7 = RatingRelationship.create({
  user: user_yuw3,
  bug: bug4,
  score: 5
})

rating8 = RatingRelationship.create({
  user: user_yuw3,
  bug: bug7,
  score: 5
})

rating9 = RatingRelationship.create({
  user: user_yuw3,
  bug: bug8,
  score: 3
})

rating10 = RatingRelationship.create({
  user: user_yuw3,
  bug: bug10,
  score: 3
})




