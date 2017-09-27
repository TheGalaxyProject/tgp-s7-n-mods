.class public Lcom/android/server/bridge/operations/RCPDumpState;
.super Ljava/lang/Object;
.source "RCPDumpState.java"


# static fields
.field public static final CALENDAR_EVENTS_TABLE:Ljava/lang/String; = "CALENDAR_EVENTS"

.field public static final CALENDAR_PROVIDER:Ljava/lang/String; = "Calendar"

.field public static final CALENDAR_TASKS_TABLE:Ljava/lang/String; = "CALENDAR_TASKS"

.field public static final CONTACTS_GROUPS_TABLE:Ljava/lang/String; = "GROUPS_CONTACTS"

.field public static final CONTACTS_PROVIDER:Ljava/lang/String; = "Contacts"

.field public static final CONTACTS_RAW_TABLE:Ljava/lang/String; = "RAW_CONTACTS"

.field public static final EVENT_PERSONAL_ACCOUNT_NAME:Ljava/lang/String; = "calendar_personal"

.field public static final KNOX_ACCOUNT_TYPE_STR:Ljava/lang/String; = "vnd.sec.contact.phone_knox"

.field public static final PERSONAL_ACCOUNT_TYPE_STR:Ljava/lang/String; = "vnd.sec.contact.phone_personal"

.field public static final RCP_CALENDAR_EVENTS_TABLE:Ljava/lang/String; = "RCP_CALENDAR_EVENTS"

.field public static final RCP_CALENDAR_TASKS_TABLE:Ljava/lang/String; = "RCP_CALENDAR_TASKS"

.field public static final RCP_CONTACTS_GROUPS_TABLE:Ljava/lang/String; = "RCP_GROUPS_CONTACTS"

.field public static final RCP_CONTACTS_RAW_TABLE:Ljava/lang/String; = "RCP_RAW_CONTACTS"

.field public static final TASK_ACCOUNT_NAME_LIKE:Ljava/lang/String; = "My task ("

.field public static final TASK_PERSONAL_ACCOUNT_NAME:Ljava/lang/String; = "task_personal"

.field private static mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;

    .line 20
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-class v0, Lcom/android/server/bridge/operations/RCPDumpState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->TAG:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    .line 24
    iput-object v1, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 49
    iput-object p1, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    .line 50
    const-string/jumbo v0, "rcp"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemRemoteContentManager;

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 48
    return-void
.end method

.method private dumpStateEvents(Ljava/io/PrintWriter;II)V
    .locals 21
    .param p1, "mPrintWriter"    # Ljava/io/PrintWriter;
    .param p2, "mSourceId"    # I
    .param p3, "mDestinationId"    # I

    .prologue
    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateEvents , mSourceId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", DestinationId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    const/4 v8, 0x0

    .line 76
    .local v8, "mSelection":Ljava/lang/String;
    const/4 v7, 0x0

    .line 77
    .local v7, "mProjection":[Ljava/lang/String;
    const/16 v19, 0x0

    .line 79
    .local v19, "mCursor":Landroid/database/Cursor;
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    .line 80
    .end local v7    # "mProjection":[Ljava/lang/String;
    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v7, v4

    .line 84
    .local v7, "mProjection":[Ljava/lang/String;
    :try_start_0
    const-string/jumbo v20, "ACCOUNT_NAME NOT LIKE ? AND DELETED=? "
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .end local v8    # "mSelection":Ljava/lang/String;
    .local v20, "mSelection":Ljava/lang/String;
    const/4 v3, 0x2

    :try_start_1
    new-array v9, v3, [Ljava/lang/String;

    .line 86
    const-string/jumbo v3, "calendar_personal%"

    const/4 v4, 0x0

    aput-object v3, v9, v4

    const-string/jumbo v3, "0"

    const/4 v4, 0x1

    aput-object v3, v9, v4

    .line 89
    .local v9, "mSelectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    const-string/jumbo v4, "Calendar"

    const-string/jumbo v5, "CALENDAR_EVENTS"

    .line 90
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/bridge/operations/RCPDumpState;->get_exCalendarId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 91
    const-string/jumbo v10, "original_id ASC, _id ASC"

    move/from16 v6, p2

    .line 89
    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/knox/SemRemoteContentManager;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v19

    .line 93
    .local v19, "mCursor":Landroid/database/Cursor;
    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateEvents ,No of Original Events from Source "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 95
    const-string/jumbo v4, "  is : "

    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 95
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    const-string/jumbo v3, "Source Events ID\'s : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 97
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 103
    :cond_0
    if-eqz v19, :cond_1

    .line 104
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object/from16 v8, v20

    .line 109
    .end local v9    # "mSelectionArgs":[Ljava/lang/String;
    .end local v19    # "mCursor":Landroid/database/Cursor;
    .end local v20    # "mSelection":Ljava/lang/String;
    :cond_2
    :goto_0
    :try_start_2
    const-string/jumbo v8, "ACCOUNT_NAME = ? AND DELETED=? "

    .line 110
    .local v8, "mSelection":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v9, v3, [Ljava/lang/String;

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "calendar_personal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v9, v4

    const-string/jumbo v3, "0"

    const/4 v4, 0x1

    aput-object v3, v9, v4

    .line 114
    .restart local v9    # "mSelectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    const-string/jumbo v4, "Calendar"

    const-string/jumbo v5, "CALENDAR_EVENTS"

    .line 116
    const-string/jumbo v10, "original_id ASC, _id ASC"

    move/from16 v6, p3

    .line 114
    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/knox/SemRemoteContentManager;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v19

    .line 118
    .restart local v19    # "mCursor":Landroid/database/Cursor;
    if-eqz v19, :cond_3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateEvents ,No of Synced Events to Destination"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 120
    const-string/jumbo v4, "  is : "

    .line 119
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 120
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 119
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    const-string/jumbo v3, "Destination Events ID\'s : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 122
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 128
    :cond_3
    if-eqz v19, :cond_4

    .line 129
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 134
    .end local v8    # "mSelection":Ljava/lang/String;
    .end local v9    # "mSelectionArgs":[Ljava/lang/String;
    .end local v19    # "mCursor":Landroid/database/Cursor;
    :cond_4
    :goto_1
    const/4 v3, 0x2

    :try_start_3
    new-array v14, v3, [Ljava/lang/String;

    .line 135
    const-string/jumbo v3, "_id_original"

    const/4 v4, 0x0

    aput-object v3, v14, v4

    const-string/jumbo v3, "_id_container"

    const/4 v4, 0x1

    aput-object v3, v14, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 137
    .end local v7    # "mProjection":[Ljava/lang/String;
    .local v14, "mProjection":[Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_4
    new-array v9, v3, [Ljava/lang/String;

    .line 138
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v9, v4

    .line 141
    .restart local v9    # "mSelectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    const-string/jumbo v11, "Calendar"

    const-string/jumbo v12, "RCP_CALENDAR_EVENTS"

    .line 142
    const-string/jumbo v17, "_id_original ASC"

    const/4 v15, 0x0

    move/from16 v13, p3

    move-object/from16 v16, v9

    .line 141
    invoke-virtual/range {v10 .. v17}, Lcom/samsung/android/knox/SemRemoteContentManager;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v19

    .line 144
    .restart local v19    # "mCursor":Landroid/database/Cursor;
    if-eqz v19, :cond_5

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateEvents ,No of Events records in RCP local db  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 146
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    const-string/jumbo v3, "RCP local db (SourceId:DestinationId) :  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 148
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printRCPLoaclDB(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 154
    :cond_5
    if-eqz v19, :cond_6

    .line 155
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v7, v14

    .line 71
    .end local v9    # "mSelectionArgs":[Ljava/lang/String;
    .end local v14    # "mProjection":[Ljava/lang/String;
    .end local v19    # "mCursor":Landroid/database/Cursor;
    .restart local v7    # "mProjection":[Ljava/lang/String;
    :cond_7
    :goto_2
    return-void

    .line 100
    .local v8, "mSelection":Ljava/lang/String;
    .local v19, "mCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v18

    .line 101
    .end local v8    # "mSelection":Ljava/lang/String;
    .end local v19    # "mCursor":Landroid/database/Cursor;
    .local v18, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 103
    if-eqz v19, :cond_2

    .line 104
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 102
    .end local v18    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 103
    :goto_4
    if-eqz v19, :cond_8

    .line 104
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 102
    :cond_8
    throw v3

    .line 125
    :catch_1
    move-exception v18

    .line 126
    .restart local v18    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 128
    if-eqz v19, :cond_4

    .line 129
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 127
    .end local v18    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    .line 128
    if-eqz v19, :cond_9

    .line 129
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_9
    throw v3

    .line 151
    :catch_2
    move-exception v18

    .line 152
    .restart local v18    # "e":Ljava/lang/Exception;
    :goto_5
    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 154
    if-eqz v19, :cond_7

    .line 155
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 153
    .end local v18    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v3

    .line 154
    :goto_6
    if-eqz v19, :cond_a

    .line 155
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 153
    :cond_a
    throw v3

    .end local v7    # "mProjection":[Ljava/lang/String;
    .restart local v14    # "mProjection":[Ljava/lang/String;
    :catchall_3
    move-exception v3

    move-object v7, v14

    .end local v14    # "mProjection":[Ljava/lang/String;
    .restart local v7    # "mProjection":[Ljava/lang/String;
    goto :goto_6

    .line 151
    .end local v7    # "mProjection":[Ljava/lang/String;
    .restart local v14    # "mProjection":[Ljava/lang/String;
    :catch_3
    move-exception v18

    .restart local v18    # "e":Ljava/lang/Exception;
    move-object v7, v14

    .end local v14    # "mProjection":[Ljava/lang/String;
    .restart local v7    # "mProjection":[Ljava/lang/String;
    goto :goto_5

    .line 102
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v20    # "mSelection":Ljava/lang/String;
    :catchall_4
    move-exception v3

    move-object/from16 v8, v20

    .end local v20    # "mSelection":Ljava/lang/String;
    .local v8, "mSelection":Ljava/lang/String;
    goto :goto_4

    .line 100
    .end local v8    # "mSelection":Ljava/lang/String;
    .restart local v20    # "mSelection":Ljava/lang/String;
    :catch_4
    move-exception v18

    .restart local v18    # "e":Ljava/lang/Exception;
    move-object/from16 v8, v20

    .end local v20    # "mSelection":Ljava/lang/String;
    .restart local v8    # "mSelection":Ljava/lang/String;
    goto :goto_3
.end method

.method private dumpStateGroups(Ljava/io/PrintWriter;II)V
    .locals 22
    .param p1, "mPrintWriter"    # Ljava/io/PrintWriter;
    .param p2, "mSourceId"    # I
    .param p3, "mDestinationId"    # I

    .prologue
    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateGroups , mSourceId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", DestinationId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    const/4 v8, 0x0

    .line 250
    .local v8, "mSelection":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "mSelectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 251
    .local v7, "mProjection":[Ljava/lang/String;
    const/16 v19, 0x0

    .line 253
    .local v19, "mCursor":Landroid/database/Cursor;
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    .line 254
    .end local v7    # "mProjection":[Ljava/lang/String;
    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v7, v4

    .line 258
    .local v7, "mProjection":[Ljava/lang/String;
    :try_start_0
    new-instance v21, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 260
    .local v21, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 261
    const-string/jumbo v8, "account_type<>? AND account_type NOT LIKE ? AND _id NOT IN (?,?,?,?)  AND deleted=?"

    .line 264
    .local v8, "mSelection":Ljava/lang/String;
    const/4 v3, 0x7

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 265
    const-string/jumbo v3, "vnd.sec.contact.phone_personal"

    const/4 v4, 0x0

    aput-object v3, v20, v4

    const-string/jumbo v3, "vnd.sec.contact.phone_knox%"

    const/4 v4, 0x1

    aput-object v3, v20, v4

    const-string/jumbo v3, "1"

    const/4 v4, 0x2

    aput-object v3, v20, v4

    const-string/jumbo v3, "2"

    const/4 v4, 0x3

    aput-object v3, v20, v4

    const-string/jumbo v3, "3"

    const/4 v4, 0x4

    aput-object v3, v20, v4

    const-string/jumbo v3, "4"

    const/4 v4, 0x5

    aput-object v3, v20, v4

    .line 266
    const-string/jumbo v3, "0"

    const/4 v4, 0x6

    aput-object v3, v20, v4

    .local v20, "mSelectionArgs":[Ljava/lang/String;
    move-object/from16 v9, v20

    .line 277
    .end local v20    # "mSelectionArgs":[Ljava/lang/String;
    .local v9, "mSelectionArgs":[Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    const-string/jumbo v4, "Contacts"

    const-string/jumbo v5, "GROUPS_CONTACTS"

    .line 278
    const-string/jumbo v10, "_id ASC"

    move/from16 v6, p2

    .line 277
    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/knox/SemRemoteContentManager;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v19

    .line 280
    .local v19, "mCursor":Landroid/database/Cursor;
    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateGroups ,No of Original Groups from Source "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 282
    const-string/jumbo v4, "  is : "

    .line 281
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 282
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 281
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    const-string/jumbo v3, "Source Group ID\'s : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 284
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :cond_0
    if-eqz v19, :cond_1

    .line 291
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .end local v8    # "mSelection":Ljava/lang/String;
    .end local v9    # "mSelectionArgs":[Ljava/lang/String;
    .end local v19    # "mCursor":Landroid/database/Cursor;
    .end local v21    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_1
    move-object/from16 v20, v9

    .line 296
    .restart local v20    # "mSelectionArgs":[Ljava/lang/String;
    :try_start_1
    const-string/jumbo v8, "account_name= ? OR account_name = ? AND deleted=?"

    .line 298
    .restart local v8    # "mSelection":Ljava/lang/String;
    const/4 v3, 0x3

    new-array v9, v3, [Ljava/lang/String;

    .line 299
    const-string/jumbo v3, "vnd.sec.contact.phone_personal0"

    const/4 v4, 0x0

    aput-object v3, v9, v4

    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vnd.sec.contact.phone_knox"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v9, v4

    const-string/jumbo v3, "0"

    const/4 v4, 0x2

    aput-object v3, v9, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 303
    .end local v20    # "mSelectionArgs":[Ljava/lang/String;
    .restart local v9    # "mSelectionArgs":[Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    const-string/jumbo v4, "Contacts"

    const-string/jumbo v5, "GROUPS_CONTACTS"

    .line 305
    const-string/jumbo v10, "_id ASC"

    move/from16 v6, p3

    .line 303
    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/knox/SemRemoteContentManager;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v19

    .line 307
    .restart local v19    # "mCursor":Landroid/database/Cursor;
    if-eqz v19, :cond_2

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateGroups ,No of Synced Groups to Destination "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 309
    const-string/jumbo v4, "  is : "

    .line 308
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 309
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 308
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    const-string/jumbo v3, "Destination Group ID\'s : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 311
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 317
    :cond_2
    if-eqz v19, :cond_3

    .line 318
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .end local v8    # "mSelection":Ljava/lang/String;
    .end local v19    # "mCursor":Landroid/database/Cursor;
    :cond_3
    :goto_2
    move-object/from16 v20, v9

    .line 323
    .end local v9    # "mSelectionArgs":[Ljava/lang/String;
    .restart local v20    # "mSelectionArgs":[Ljava/lang/String;
    const/4 v3, 0x2

    :try_start_3
    new-array v14, v3, [Ljava/lang/String;

    .line 324
    const-string/jumbo v3, "_id_original"

    const/4 v4, 0x0

    aput-object v3, v14, v4

    const-string/jumbo v3, "_id_container"

    const/4 v4, 0x1

    aput-object v3, v14, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 327
    .end local v7    # "mProjection":[Ljava/lang/String;
    .local v14, "mProjection":[Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_4
    new-array v9, v3, [Ljava/lang/String;

    .line 328
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v9, v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 331
    .end local v20    # "mSelectionArgs":[Ljava/lang/String;
    .restart local v9    # "mSelectionArgs":[Ljava/lang/String;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    const-string/jumbo v11, "Contacts"

    const-string/jumbo v12, "RCP_GROUPS_CONTACTS"

    .line 332
    const/4 v15, 0x0

    const/16 v17, 0x0

    move/from16 v13, p3

    move-object/from16 v16, v9

    .line 331
    invoke-virtual/range {v10 .. v17}, Lcom/samsung/android/knox/SemRemoteContentManager;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v19

    .line 334
    .restart local v19    # "mCursor":Landroid/database/Cursor;
    if-eqz v19, :cond_4

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateGroups ,No of Group records in RCP local db  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 336
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 335
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    const-string/jumbo v3, "RCP local db (SourceId:DestinationId) :  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 338
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printRCPLoaclDB(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 344
    :cond_4
    if-eqz v19, :cond_5

    .line 345
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v7, v14

    .line 245
    .end local v14    # "mProjection":[Ljava/lang/String;
    .end local v19    # "mCursor":Landroid/database/Cursor;
    .restart local v7    # "mProjection":[Ljava/lang/String;
    :cond_6
    :goto_3
    return-void

    .line 269
    .local v8, "mSelection":Ljava/lang/String;
    .local v9, "mSelectionArgs":[Ljava/lang/String;
    .local v19, "mCursor":Landroid/database/Cursor;
    .restart local v21    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_7
    :try_start_6
    const-string/jumbo v8, "account_type<>? AND account_type NOT LIKE ? AND _id NOT IN (?,?,?)  AND deleted=?"

    .line 272
    .local v8, "mSelection":Ljava/lang/String;
    const/4 v3, 0x6

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 273
    const-string/jumbo v3, "vnd.sec.contact.phone_personal"

    const/4 v4, 0x0

    aput-object v3, v20, v4

    const-string/jumbo v3, "vnd.sec.contact.phone_knox%"

    const/4 v4, 0x1

    aput-object v3, v20, v4

    const-string/jumbo v3, "1"

    const/4 v4, 0x2

    aput-object v3, v20, v4

    const-string/jumbo v3, "2"

    const/4 v4, 0x3

    aput-object v3, v20, v4

    const-string/jumbo v3, "3"

    const/4 v4, 0x4

    aput-object v3, v20, v4

    const-string/jumbo v3, "0"

    const/4 v4, 0x5

    aput-object v3, v20, v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .restart local v20    # "mSelectionArgs":[Ljava/lang/String;
    move-object/from16 v9, v20

    .line 272
    .end local v20    # "mSelectionArgs":[Ljava/lang/String;
    .local v9, "mSelectionArgs":[Ljava/lang/String;
    goto/16 :goto_0

    .line 287
    .end local v8    # "mSelection":Ljava/lang/String;
    .end local v9    # "mSelectionArgs":[Ljava/lang/String;
    .end local v19    # "mCursor":Landroid/database/Cursor;
    .end local v21    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v18

    .line 288
    .local v18, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 290
    if-eqz v19, :cond_1

    .line 291
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 289
    .end local v18    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 290
    if-eqz v19, :cond_8

    .line 291
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 289
    :cond_8
    throw v3

    .line 314
    .restart local v20    # "mSelectionArgs":[Ljava/lang/String;
    :catch_1
    move-exception v18

    .restart local v18    # "e":Ljava/lang/Exception;
    move-object/from16 v9, v20

    .line 315
    .end local v20    # "mSelectionArgs":[Ljava/lang/String;
    .restart local v9    # "mSelectionArgs":[Ljava/lang/String;
    :goto_4
    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 317
    if-eqz v19, :cond_3

    .line 318
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 316
    .end local v9    # "mSelectionArgs":[Ljava/lang/String;
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v20    # "mSelectionArgs":[Ljava/lang/String;
    :catchall_1
    move-exception v3

    move-object/from16 v9, v20

    .line 317
    .end local v20    # "mSelectionArgs":[Ljava/lang/String;
    .restart local v9    # "mSelectionArgs":[Ljava/lang/String;
    :goto_5
    if-eqz v19, :cond_9

    .line 318
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 316
    :cond_9
    throw v3

    .line 341
    .end local v9    # "mSelectionArgs":[Ljava/lang/String;
    .restart local v20    # "mSelectionArgs":[Ljava/lang/String;
    :catch_2
    move-exception v18

    .restart local v18    # "e":Ljava/lang/Exception;
    move-object/from16 v9, v20

    .line 342
    .end local v20    # "mSelectionArgs":[Ljava/lang/String;
    .restart local v9    # "mSelectionArgs":[Ljava/lang/String;
    :goto_6
    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 344
    if-eqz v19, :cond_6

    .line 345
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 343
    .end local v9    # "mSelectionArgs":[Ljava/lang/String;
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v20    # "mSelectionArgs":[Ljava/lang/String;
    :catchall_2
    move-exception v3

    move-object/from16 v9, v20

    .line 344
    .end local v20    # "mSelectionArgs":[Ljava/lang/String;
    .restart local v9    # "mSelectionArgs":[Ljava/lang/String;
    :goto_7
    if-eqz v19, :cond_a

    .line 345
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 343
    :cond_a
    throw v3

    .end local v7    # "mProjection":[Ljava/lang/String;
    .end local v9    # "mSelectionArgs":[Ljava/lang/String;
    .restart local v14    # "mProjection":[Ljava/lang/String;
    .restart local v20    # "mSelectionArgs":[Ljava/lang/String;
    :catchall_3
    move-exception v3

    move-object v7, v14

    .end local v14    # "mProjection":[Ljava/lang/String;
    .restart local v7    # "mProjection":[Ljava/lang/String;
    move-object/from16 v9, v20

    .end local v20    # "mSelectionArgs":[Ljava/lang/String;
    .restart local v9    # "mSelectionArgs":[Ljava/lang/String;
    goto :goto_7

    .end local v7    # "mProjection":[Ljava/lang/String;
    .restart local v14    # "mProjection":[Ljava/lang/String;
    :catchall_4
    move-exception v3

    move-object v7, v14

    .end local v14    # "mProjection":[Ljava/lang/String;
    .restart local v7    # "mProjection":[Ljava/lang/String;
    goto :goto_7

    .restart local v18    # "e":Ljava/lang/Exception;
    :catchall_5
    move-exception v3

    goto :goto_7

    .line 341
    .end local v7    # "mProjection":[Ljava/lang/String;
    .end local v9    # "mSelectionArgs":[Ljava/lang/String;
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v14    # "mProjection":[Ljava/lang/String;
    .restart local v20    # "mSelectionArgs":[Ljava/lang/String;
    :catch_3
    move-exception v18

    .restart local v18    # "e":Ljava/lang/Exception;
    move-object v7, v14

    .end local v14    # "mProjection":[Ljava/lang/String;
    .restart local v7    # "mProjection":[Ljava/lang/String;
    move-object/from16 v9, v20

    .end local v20    # "mSelectionArgs":[Ljava/lang/String;
    .restart local v9    # "mSelectionArgs":[Ljava/lang/String;
    goto :goto_6

    .end local v7    # "mProjection":[Ljava/lang/String;
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v14    # "mProjection":[Ljava/lang/String;
    :catch_4
    move-exception v18

    .restart local v18    # "e":Ljava/lang/Exception;
    move-object v7, v14

    .end local v14    # "mProjection":[Ljava/lang/String;
    .restart local v7    # "mProjection":[Ljava/lang/String;
    goto :goto_6

    .line 316
    .end local v18    # "e":Ljava/lang/Exception;
    :catchall_6
    move-exception v3

    goto :goto_5

    .line 314
    .restart local v8    # "mSelection":Ljava/lang/String;
    :catch_5
    move-exception v18

    .restart local v18    # "e":Ljava/lang/Exception;
    goto :goto_4
.end method

.method private dumpStateRawContacts(Ljava/io/PrintWriter;II)V
    .locals 21
    .param p1, "mPrintWriter"    # Ljava/io/PrintWriter;
    .param p2, "mSourceId"    # I
    .param p3, "mDestinationId"    # I

    .prologue
    .line 350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateRawContacts , mSourceId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 351
    const-string/jumbo v4, ", DestinationId : "

    .line 350
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    const/4 v8, 0x0

    .line 353
    .local v8, "mSelection":Ljava/lang/String;
    const/16 v20, 0x0

    .local v20, "mSelectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 354
    .local v7, "mProjection":[Ljava/lang/String;
    const/16 v19, 0x0

    .line 356
    .local v19, "mCursor":Landroid/database/Cursor;
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    .line 357
    .end local v7    # "mProjection":[Ljava/lang/String;
    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v7, v4

    .line 362
    .local v7, "mProjection":[Ljava/lang/String;
    :try_start_0
    const-string/jumbo v8, "account_type<>? AND account_type NOT LIKE ? AND deleted=?"

    .line 364
    .local v8, "mSelection":Ljava/lang/String;
    const/4 v3, 0x3

    new-array v9, v3, [Ljava/lang/String;

    .line 365
    const-string/jumbo v3, "vnd.sec.contact.phone_personal"

    const/4 v4, 0x0

    aput-object v3, v9, v4

    const-string/jumbo v3, "vnd.sec.contact.phone_knox%"

    const/4 v4, 0x1

    aput-object v3, v9, v4

    const-string/jumbo v3, "0"

    const/4 v4, 0x2

    aput-object v3, v9, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    .end local v20    # "mSelectionArgs":[Ljava/lang/String;
    .local v9, "mSelectionArgs":[Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    const-string/jumbo v4, "Contacts"

    const-string/jumbo v5, "RAW_CONTACTS"

    .line 369
    const-string/jumbo v10, "_id ASC"

    move/from16 v6, p2

    .line 368
    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/knox/SemRemoteContentManager;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v19

    .line 371
    .local v19, "mCursor":Landroid/database/Cursor;
    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateRawContacts ,No of Original Raw_Contacts from Source "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 374
    const-string/jumbo v4, "  is : "

    .line 373
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 374
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 373
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 372
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    const-string/jumbo v3, "Source Raw_Contacts ID\'s : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 376
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 382
    :cond_0
    if-eqz v19, :cond_1

    .line 383
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .end local v8    # "mSelection":Ljava/lang/String;
    .end local v19    # "mCursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    move-object/from16 v20, v9

    .line 388
    .end local v9    # "mSelectionArgs":[Ljava/lang/String;
    .local v20, "mSelectionArgs":[Ljava/lang/String;
    :try_start_2
    const-string/jumbo v8, "account_name= ? OR account_name = ? AND deleted=?"

    .line 390
    .restart local v8    # "mSelection":Ljava/lang/String;
    const/4 v3, 0x3

    new-array v9, v3, [Ljava/lang/String;

    .line 391
    const-string/jumbo v3, "vnd.sec.contact.phone_personal0"

    const/4 v4, 0x0

    aput-object v3, v9, v4

    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vnd.sec.contact.phone_knox"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v9, v4

    const-string/jumbo v3, "0"

    const/4 v4, 0x2

    aput-object v3, v9, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 395
    .end local v20    # "mSelectionArgs":[Ljava/lang/String;
    .restart local v9    # "mSelectionArgs":[Ljava/lang/String;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    const-string/jumbo v4, "Contacts"

    const-string/jumbo v5, "RAW_CONTACTS"

    .line 397
    const-string/jumbo v10, "_id ASC"

    move/from16 v6, p3

    .line 395
    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/knox/SemRemoteContentManager;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v19

    .line 399
    .restart local v19    # "mCursor":Landroid/database/Cursor;
    if-eqz v19, :cond_2

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateRawContacts ,No of Synced Raw_Contacts to Destination "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 402
    const-string/jumbo v4, "  is : "

    .line 401
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 402
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 401
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 400
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    const-string/jumbo v3, "Destination Raw_Contacts ID\'s : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 404
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 410
    :cond_2
    if-eqz v19, :cond_3

    .line 411
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .end local v8    # "mSelection":Ljava/lang/String;
    .end local v19    # "mCursor":Landroid/database/Cursor;
    :cond_3
    :goto_1
    move-object/from16 v20, v9

    .line 416
    .end local v9    # "mSelectionArgs":[Ljava/lang/String;
    .restart local v20    # "mSelectionArgs":[Ljava/lang/String;
    const/4 v3, 0x2

    :try_start_4
    new-array v14, v3, [Ljava/lang/String;

    .line 417
    const-string/jumbo v3, "_id_raw_original"

    const/4 v4, 0x0

    aput-object v3, v14, v4

    const-string/jumbo v3, "_id_raw_container"

    const/4 v4, 0x1

    aput-object v3, v14, v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 419
    .end local v7    # "mProjection":[Ljava/lang/String;
    .local v14, "mProjection":[Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_5
    new-array v9, v3, [Ljava/lang/String;

    .line 420
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v9, v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 422
    .end local v20    # "mSelectionArgs":[Ljava/lang/String;
    .restart local v9    # "mSelectionArgs":[Ljava/lang/String;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    const-string/jumbo v11, "Contacts"

    const-string/jumbo v12, "RCP_RAW_CONTACTS"

    .line 423
    const-string/jumbo v17, "_id_raw_original ASC"

    const/4 v15, 0x0

    move/from16 v13, p3

    move-object/from16 v16, v9

    .line 422
    invoke-virtual/range {v10 .. v17}, Lcom/samsung/android/knox/SemRemoteContentManager;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v19

    .line 425
    .restart local v19    # "mCursor":Landroid/database/Cursor;
    if-eqz v19, :cond_4

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 427
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateRawContacts ,No of Raw_Contacts records in RCP local db  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 428
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 427
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 426
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    const-string/jumbo v3, "RCP local db (SourceId:DestinationId) :  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 430
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printRCPLoaclDB(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 436
    :cond_4
    if-eqz v19, :cond_5

    .line 437
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v7, v14

    .line 349
    .end local v14    # "mProjection":[Ljava/lang/String;
    .end local v19    # "mCursor":Landroid/database/Cursor;
    .restart local v7    # "mProjection":[Ljava/lang/String;
    :cond_6
    :goto_2
    return-void

    .line 379
    .end local v9    # "mSelectionArgs":[Ljava/lang/String;
    .local v19, "mCursor":Landroid/database/Cursor;
    .local v20, "mSelectionArgs":[Ljava/lang/String;
    :catch_0
    move-exception v18

    .local v18, "e":Ljava/lang/Exception;
    move-object/from16 v9, v20

    .line 380
    .end local v19    # "mCursor":Landroid/database/Cursor;
    .end local v20    # "mSelectionArgs":[Ljava/lang/String;
    .restart local v9    # "mSelectionArgs":[Ljava/lang/String;
    :goto_3
    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 382
    if-eqz v19, :cond_1

    .line 383
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 381
    .end local v9    # "mSelectionArgs":[Ljava/lang/String;
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v19    # "mCursor":Landroid/database/Cursor;
    .restart local v20    # "mSelectionArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    move-object/from16 v9, v20

    .line 382
    .end local v19    # "mCursor":Landroid/database/Cursor;
    .end local v20    # "mSelectionArgs":[Ljava/lang/String;
    .restart local v9    # "mSelectionArgs":[Ljava/lang/String;
    :goto_4
    if-eqz v19, :cond_7

    .line 383
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 381
    :cond_7
    throw v3

    .line 407
    .end local v9    # "mSelectionArgs":[Ljava/lang/String;
    .local v20, "mSelectionArgs":[Ljava/lang/String;
    :catch_1
    move-exception v18

    .restart local v18    # "e":Ljava/lang/Exception;
    move-object/from16 v9, v20

    .line 408
    .end local v20    # "mSelectionArgs":[Ljava/lang/String;
    .restart local v9    # "mSelectionArgs":[Ljava/lang/String;
    :goto_5
    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 410
    if-eqz v19, :cond_3

    .line 411
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 409
    .end local v9    # "mSelectionArgs":[Ljava/lang/String;
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v20    # "mSelectionArgs":[Ljava/lang/String;
    :catchall_1
    move-exception v3

    move-object/from16 v9, v20

    .line 410
    .end local v20    # "mSelectionArgs":[Ljava/lang/String;
    .restart local v9    # "mSelectionArgs":[Ljava/lang/String;
    :goto_6
    if-eqz v19, :cond_8

    .line 411
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 409
    :cond_8
    throw v3

    .line 433
    .end local v9    # "mSelectionArgs":[Ljava/lang/String;
    .restart local v20    # "mSelectionArgs":[Ljava/lang/String;
    :catch_2
    move-exception v18

    .restart local v18    # "e":Ljava/lang/Exception;
    move-object/from16 v9, v20

    .line 434
    .end local v20    # "mSelectionArgs":[Ljava/lang/String;
    .restart local v9    # "mSelectionArgs":[Ljava/lang/String;
    :goto_7
    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 436
    if-eqz v19, :cond_6

    .line 437
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 435
    .end local v9    # "mSelectionArgs":[Ljava/lang/String;
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v20    # "mSelectionArgs":[Ljava/lang/String;
    :catchall_2
    move-exception v3

    move-object/from16 v9, v20

    .line 436
    .end local v20    # "mSelectionArgs":[Ljava/lang/String;
    .restart local v9    # "mSelectionArgs":[Ljava/lang/String;
    :goto_8
    if-eqz v19, :cond_9

    .line 437
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 435
    :cond_9
    throw v3

    .end local v7    # "mProjection":[Ljava/lang/String;
    .end local v9    # "mSelectionArgs":[Ljava/lang/String;
    .restart local v14    # "mProjection":[Ljava/lang/String;
    .restart local v20    # "mSelectionArgs":[Ljava/lang/String;
    :catchall_3
    move-exception v3

    move-object v7, v14

    .end local v14    # "mProjection":[Ljava/lang/String;
    .restart local v7    # "mProjection":[Ljava/lang/String;
    move-object/from16 v9, v20

    .end local v20    # "mSelectionArgs":[Ljava/lang/String;
    .restart local v9    # "mSelectionArgs":[Ljava/lang/String;
    goto :goto_8

    .end local v7    # "mProjection":[Ljava/lang/String;
    .restart local v14    # "mProjection":[Ljava/lang/String;
    :catchall_4
    move-exception v3

    move-object v7, v14

    .end local v14    # "mProjection":[Ljava/lang/String;
    .restart local v7    # "mProjection":[Ljava/lang/String;
    goto :goto_8

    .restart local v18    # "e":Ljava/lang/Exception;
    :catchall_5
    move-exception v3

    goto :goto_8

    .line 433
    .end local v7    # "mProjection":[Ljava/lang/String;
    .end local v9    # "mSelectionArgs":[Ljava/lang/String;
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v14    # "mProjection":[Ljava/lang/String;
    .restart local v20    # "mSelectionArgs":[Ljava/lang/String;
    :catch_3
    move-exception v18

    .restart local v18    # "e":Ljava/lang/Exception;
    move-object v7, v14

    .end local v14    # "mProjection":[Ljava/lang/String;
    .restart local v7    # "mProjection":[Ljava/lang/String;
    move-object/from16 v9, v20

    .end local v20    # "mSelectionArgs":[Ljava/lang/String;
    .restart local v9    # "mSelectionArgs":[Ljava/lang/String;
    goto :goto_7

    .end local v7    # "mProjection":[Ljava/lang/String;
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v14    # "mProjection":[Ljava/lang/String;
    :catch_4
    move-exception v18

    .restart local v18    # "e":Ljava/lang/Exception;
    move-object v7, v14

    .end local v14    # "mProjection":[Ljava/lang/String;
    .restart local v7    # "mProjection":[Ljava/lang/String;
    goto :goto_7

    .line 409
    .end local v18    # "e":Ljava/lang/Exception;
    :catchall_6
    move-exception v3

    goto :goto_6

    .line 407
    .restart local v8    # "mSelection":Ljava/lang/String;
    :catch_5
    move-exception v18

    .restart local v18    # "e":Ljava/lang/Exception;
    goto :goto_5

    .line 381
    .end local v8    # "mSelection":Ljava/lang/String;
    .end local v18    # "e":Ljava/lang/Exception;
    :catchall_7
    move-exception v3

    goto :goto_4

    .line 379
    .restart local v8    # "mSelection":Ljava/lang/String;
    :catch_6
    move-exception v18

    .restart local v18    # "e":Ljava/lang/Exception;
    goto :goto_3
.end method

.method private dumpStateTasks(Ljava/io/PrintWriter;II)V
    .locals 20
    .param p1, "mPrintWriter"    # Ljava/io/PrintWriter;
    .param p2, "mSourceId"    # I
    .param p3, "mDestinationId"    # I

    .prologue
    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateTasks , mSourceId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", DestinationId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    const/4 v8, 0x0

    .line 164
    .local v8, "mSelection":Ljava/lang/String;
    const/4 v7, 0x0

    .line 165
    .local v7, "mProjection":[Ljava/lang/String;
    const/16 v19, 0x0

    .line 167
    .local v19, "mCursor":Landroid/database/Cursor;
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    .line 168
    .end local v7    # "mProjection":[Ljava/lang/String;
    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v7, v4

    .line 172
    .local v7, "mProjection":[Ljava/lang/String;
    :try_start_0
    const-string/jumbo v8, "ACCOUNTNAME NOT LIKE ? AND DELETED=?"

    .line 173
    .local v8, "mSelection":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v9, v3, [Ljava/lang/String;

    .line 174
    const-string/jumbo v3, "My task (%"

    const/4 v4, 0x0

    aput-object v3, v9, v4

    const-string/jumbo v3, "0"

    const/4 v4, 0x1

    aput-object v3, v9, v4

    .line 177
    .local v9, "mSelectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    const-string/jumbo v4, "Calendar"

    const-string/jumbo v5, "CALENDAR_TASKS"

    .line 178
    const-string/jumbo v10, "_id ASC"

    move/from16 v6, p2

    .line 177
    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/knox/SemRemoteContentManager;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v19

    .line 180
    .local v19, "mCursor":Landroid/database/Cursor;
    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateTasks ,No of Original Tasks from Source "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 182
    const-string/jumbo v4, "  is : "

    .line 181
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 182
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 181
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    const-string/jumbo v3, "Source Tasks ID\'s : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 184
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :cond_0
    if-eqz v19, :cond_1

    .line 191
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 196
    .end local v8    # "mSelection":Ljava/lang/String;
    .end local v9    # "mSelectionArgs":[Ljava/lang/String;
    .end local v19    # "mCursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    :try_start_1
    const-string/jumbo v8, "_sync_account = ? AND DELETED=?"

    .line 197
    .restart local v8    # "mSelection":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v9, v3, [Ljava/lang/String;

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "task_personal_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v9, v4

    const-string/jumbo v3, "0"

    const/4 v4, 0x1

    aput-object v3, v9, v4

    .line 201
    .restart local v9    # "mSelectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    const-string/jumbo v4, "Calendar"

    const-string/jumbo v5, "CALENDAR_TASKS"

    .line 202
    const-string/jumbo v10, "_id ASC"

    move/from16 v6, p3

    .line 201
    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/knox/SemRemoteContentManager;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v19

    .line 204
    .restart local v19    # "mCursor":Landroid/database/Cursor;
    if-eqz v19, :cond_2

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateTasks ,No of Synced Tasks to Destination "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 206
    const-string/jumbo v4, "  is : "

    .line 205
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 206
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 205
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    const-string/jumbo v3, "Destination Tasks ID\'s : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 208
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 214
    :cond_2
    if-eqz v19, :cond_3

    .line 215
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 220
    .end local v8    # "mSelection":Ljava/lang/String;
    .end local v9    # "mSelectionArgs":[Ljava/lang/String;
    .end local v19    # "mCursor":Landroid/database/Cursor;
    :cond_3
    :goto_1
    const/4 v3, 0x2

    :try_start_2
    new-array v14, v3, [Ljava/lang/String;

    .line 221
    const-string/jumbo v3, "_id_original"

    const/4 v4, 0x0

    aput-object v3, v14, v4

    const-string/jumbo v3, "_id_container"

    const/4 v4, 0x1

    aput-object v3, v14, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 223
    .end local v7    # "mProjection":[Ljava/lang/String;
    .local v14, "mProjection":[Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_3
    new-array v9, v3, [Ljava/lang/String;

    .line 224
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v9, v4

    .line 227
    .restart local v9    # "mSelectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    const-string/jumbo v11, "Calendar"

    const-string/jumbo v12, "RCP_CALENDAR_TASKS"

    .line 228
    const-string/jumbo v17, "_id_original ASC"

    const/4 v15, 0x0

    move/from16 v13, p3

    move-object/from16 v16, v9

    .line 227
    invoke-virtual/range {v10 .. v17}, Lcom/samsung/android/knox/SemRemoteContentManager;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v19

    .line 230
    .restart local v19    # "mCursor":Landroid/database/Cursor;
    if-eqz v19, :cond_4

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateTasks ,No of tasks records in RCP local db  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 232
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 231
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    const-string/jumbo v3, "RCP local db (SourceId:DestinationId) :  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printRCPLoaclDB(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 240
    :cond_4
    if-eqz v19, :cond_5

    .line 241
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v7, v14

    .line 159
    .end local v9    # "mSelectionArgs":[Ljava/lang/String;
    .end local v14    # "mProjection":[Ljava/lang/String;
    .end local v19    # "mCursor":Landroid/database/Cursor;
    .restart local v7    # "mProjection":[Ljava/lang/String;
    :cond_6
    :goto_2
    return-void

    .line 187
    :catch_0
    move-exception v18

    .line 188
    .local v18, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 190
    if-eqz v19, :cond_1

    .line 191
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 189
    .end local v18    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 190
    if-eqz v19, :cond_7

    .line 191
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 189
    :cond_7
    throw v3

    .line 211
    :catch_1
    move-exception v18

    .line 212
    .restart local v18    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 214
    if-eqz v19, :cond_3

    .line 215
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 213
    .end local v18    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    .line 214
    if-eqz v19, :cond_8

    .line 215
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 213
    :cond_8
    throw v3

    .line 237
    :catch_2
    move-exception v18

    .line 238
    .restart local v18    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 240
    if-eqz v19, :cond_6

    .line 241
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 239
    .end local v18    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v3

    .line 240
    :goto_4
    if-eqz v19, :cond_9

    .line 241
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 239
    :cond_9
    throw v3

    .end local v7    # "mProjection":[Ljava/lang/String;
    .restart local v14    # "mProjection":[Ljava/lang/String;
    :catchall_3
    move-exception v3

    move-object v7, v14

    .end local v14    # "mProjection":[Ljava/lang/String;
    .restart local v7    # "mProjection":[Ljava/lang/String;
    goto :goto_4

    .line 237
    .end local v7    # "mProjection":[Ljava/lang/String;
    .restart local v14    # "mProjection":[Ljava/lang/String;
    :catch_3
    move-exception v18

    .restart local v18    # "e":Ljava/lang/Exception;
    move-object v7, v14

    .end local v14    # "mProjection":[Ljava/lang/String;
    .restart local v7    # "mProjection":[Ljava/lang/String;
    goto :goto_3
.end method

.method public static getInstance(Landroid/content/Context;Ljava/io/PrintWriter;)Lcom/android/server/bridge/operations/RCPDumpState;
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mPrintWriter"    # Ljava/io/PrintWriter;

    .prologue
    .line 54
    sget-object v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/android/server/bridge/operations/RCPDumpState;

    invoke-direct {v0, p0}, Lcom/android/server/bridge/operations/RCPDumpState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;

    .line 56
    :cond_0
    sget-object v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;

    return-object v0
.end method

.method private get_exCalendarId()Ljava/lang/String;
    .locals 9

    .prologue
    .line 466
    const-string/jumbo v7, ""

    .line 468
    .local v7, "calendar":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 469
    const-string/jumbo v1, "CscFeature_Calendar_EnableLocalHolidayDisplay"

    .line 468
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 470
    .local v6, "CSC":Ljava/lang/String;
    const/4 v8, 0x0

    .line 473
    .local v8, "mCursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v0, "JAPAN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 476
    const-string/jumbo v3, "name IS NULL OR name NOT IN(select name from Calendars where account_type is \'LOCAL\' AND name is \'legalHoliday\')"

    .line 477
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 478
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 479
    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 480
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 477
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 518
    .end local v3    # "selection":Ljava/lang/String;
    .end local v8    # "mCursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 520
    const-string/jumbo v7, "AND calendar_id IN ("

    .line 521
    iget-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " id count fetched "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_8

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 527
    :goto_1
    iget-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " calendar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 530
    const-string/jumbo v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 532
    :cond_2
    iget-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " final calendar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    if-eqz v8, :cond_3

    .line 535
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 537
    :cond_3
    return-object v7

    .line 482
    .restart local v8    # "mCursor":Landroid/database/Cursor;
    :cond_4
    :try_start_1
    const-string/jumbo v0, "TAIWAN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 485
    const-string/jumbo v3, "name IS NULL OR name NOT IN(select name from Calendars where account_type is \'LOCAL\' AND name is \'legalHoliday\')"

    .line 486
    .restart local v3    # "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 487
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 488
    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 489
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 486
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "mCursor":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 491
    .end local v3    # "selection":Ljava/lang/String;
    .local v8, "mCursor":Landroid/database/Cursor;
    :cond_5
    const-string/jumbo v0, "HONGKONG"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 494
    const-string/jumbo v3, "name IS NULL OR name NOT IN(select name from Calendars where account_type is \'LOCAL\' AND name is \'legalHoliday\')"

    .line 495
    .restart local v3    # "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 496
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 497
    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 498
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 495
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "mCursor":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 500
    .end local v3    # "selection":Ljava/lang/String;
    .local v8, "mCursor":Landroid/database/Cursor;
    :cond_6
    const-string/jumbo v0, "CHINA"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 503
    const-string/jumbo v3, "name IS NULL OR name NOT IN(select name from Calendars where account_type is \'LOCAL\' AND name IN (\'legalHoliday\',\'24SolarTerms\'))"

    .line 504
    .restart local v3    # "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 505
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 506
    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 507
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 504
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "mCursor":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 509
    .end local v3    # "selection":Ljava/lang/String;
    .local v8, "mCursor":Landroid/database/Cursor;
    :cond_7
    const-string/jumbo v0, "KOREA"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    const-string/jumbo v3, "name IS NULL OR name NOT IN(select name from Calendars where account_type is \'LOCAL\' AND name IN (\'legalHoliday\',\'legalSubstHoliday\'))"

    .line 513
    .restart local v3    # "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 514
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 515
    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 516
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 513
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "mCursor":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 526
    .end local v3    # "selection":Ljava/lang/String;
    .end local v8    # "mCursor":Landroid/database/Cursor;
    :cond_8
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    goto/16 :goto_1

    .line 533
    :catchall_0
    move-exception v0

    .line 534
    if-eqz v8, :cond_9

    .line 535
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 533
    :cond_9
    throw v0
.end method

.method private printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "mPrintWriter"    # Ljava/io/PrintWriter;
    .param p2, "mCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x0

    .line 454
    :goto_0
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 455
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 456
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    const-string/jumbo v0, " , "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 461
    :cond_0
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method private printRCPLoaclDB(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "mPrintWriter"    # Ljava/io/PrintWriter;
    .param p2, "mCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    .line 442
    :goto_0
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 444
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 450
    :cond_0
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    return-void

    .line 447
    :cond_1
    const-string/jumbo v0, " , "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public dumpStateCalendar(Ljava/io/PrintWriter;II)V
    .locals 1
    .param p1, "mPrintWriter"    # Ljava/io/PrintWriter;
    .param p2, "mSourceId"    # I
    .param p3, "mDestinationId"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/bridge/operations/RCPDumpState;->dumpStateEvents(Ljava/io/PrintWriter;II)V

    .line 61
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/bridge/operations/RCPDumpState;->dumpStateTasks(Ljava/io/PrintWriter;II)V

    .line 59
    return-void
.end method

.method public dumpStateContact(Ljava/io/PrintWriter;II)V
    .locals 1
    .param p1, "mPrintWriter"    # Ljava/io/PrintWriter;
    .param p2, "mSourceId"    # I
    .param p3, "mDestinationId"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/bridge/operations/RCPDumpState;->dumpStateGroups(Ljava/io/PrintWriter;II)V

    .line 67
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/bridge/operations/RCPDumpState;->dumpStateRawContacts(Ljava/io/PrintWriter;II)V

    .line 65
    return-void
.end method
