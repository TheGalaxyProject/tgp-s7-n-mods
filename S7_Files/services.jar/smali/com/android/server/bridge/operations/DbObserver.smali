.class public Lcom/android/server/bridge/operations/DbObserver;
.super Ljava/lang/Object;
.source "DbObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/bridge/operations/DbObserver$1;,
        Lcom/android/server/bridge/operations/DbObserver$2;,
        Lcom/android/server/bridge/operations/DbObserver$3;,
        Lcom/android/server/bridge/operations/DbObserver$4;,
        Lcom/android/server/bridge/operations/DbObserver$5;
    }
.end annotation


# static fields
.field private static final ACCOUNT_TYPE_KNOX_STR:Ljava/lang/String; = "vnd.sec.contact.phone_knox"

.field private static final ACCOUNT_TYPE_STR:Ljava/lang/String; = "vnd.sec.contact.phone_personal"

.field private static final CALENDAR_EVENT_URI:Landroid/net/Uri;

.field private static final CALENDAR_TASK_URI:Landroid/net/Uri;

.field private static final CON_RAW_CONTACTS_URI:Landroid/net/Uri;

.field private static final EVENT_PERSONAL_ACCOUNT_NAME:Ljava/lang/String; = "calendar_personal"

.field private static final TASK_ACCOUNT_NAME_LIKE:Ljava/lang/String; = "My task ("


# instance fields
.field private final DELAY_IN_MILLISECONDS:J

.field private TAG:Ljava/lang/String;

.field calendarEventObserver:Landroid/database/ContentObserver;

.field calendarTaskObserver:Landroid/database/ContentObserver;

.field mCalendarRunnable:Ljava/lang/Runnable;

.field private mCalendar_last_synced_timeStamp:J

.field mContactRunnable:Ljava/lang/Runnable;

.field private mContact_last_synced_timeStamp:J

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNo_of_contact_last_synced:I

.field private mNo_of_events_last_synced:I

.field private mNo_of_tasks_last_synced:I

.field private mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

.field private mUserId:I

.field rawContactObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/android/server/bridge/operations/DbObserver;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/bridge/operations/DbObserver;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mCalendar_last_synced_timeStamp:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/server/bridge/operations/DbObserver;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContact_last_synced_timeStamp:J

    return-wide v0
.end method

.method static synthetic -get3(Lcom/android/server/bridge/operations/DbObserver;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/bridge/operations/DbObserver;)I
    .locals 1

    iget v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mNo_of_contact_last_synced:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/bridge/operations/DbObserver;)I
    .locals 1

    iget v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mNo_of_events_last_synced:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/bridge/operations/DbObserver;)I
    .locals 1

    iget v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mNo_of_tasks_last_synced:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/bridge/operations/DbObserver;)Lcom/samsung/android/knox/SemRemoteContentManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/bridge/operations/DbObserver;)I
    .locals 1

    iget v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mUserId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/bridge/operations/DbObserver;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/bridge/operations/DbObserver;->mCalendar_last_synced_timeStamp:J

    return-wide p1
.end method

.method static synthetic -set1(Lcom/android/server/bridge/operations/DbObserver;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/bridge/operations/DbObserver;->mContact_last_synced_timeStamp:J

    return-wide p1
.end method

.method static synthetic -set2(Lcom/android/server/bridge/operations/DbObserver;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/bridge/operations/DbObserver;->mNo_of_contact_last_synced:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/bridge/operations/DbObserver;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/bridge/operations/DbObserver;->mNo_of_events_last_synced:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/bridge/operations/DbObserver;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/bridge/operations/DbObserver;->mNo_of_tasks_last_synced:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/bridge/operations/DbObserver;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/bridge/operations/DbObserver;->getNoOfEvents()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/bridge/operations/DbObserver;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/bridge/operations/DbObserver;->getNoOfRawContacts()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/bridge/operations/DbObserver;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/bridge/operations/DbObserver;->getNoOfTasks()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/bridge/operations/DbObserver;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/bridge/operations/DbObserver;->getRecentlyUpdateEventsList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/server/bridge/operations/DbObserver;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/bridge/operations/DbObserver;->getRecentlyUpdateRawContactIDList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/server/bridge/operations/DbObserver;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/bridge/operations/DbObserver;->getRecentlyUpdateTasksList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/android/server/bridge/operations/DbObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/bridge/operations/DbObserver;->startCalendarSync()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/server/bridge/operations/DbObserver;->CON_RAW_CONTACTS_URI:Landroid/net/Uri;

    .line 30
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/server/bridge/operations/DbObserver;->CALENDAR_EVENT_URI:Landroid/net/Uri;

    .line 32
    const-string/jumbo v0, "content://com.android.calendar/syncTasks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/bridge/operations/DbObserver;->CALENDAR_TASK_URI:Landroid/net/Uri;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mUserId"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContext:Landroid/content/Context;

    .line 26
    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 43
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/server/bridge/operations/DbObserver;->DELAY_IN_MILLISECONDS:J

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mUserId:I

    .line 47
    iput-wide v4, p0, Lcom/android/server/bridge/operations/DbObserver;->mContact_last_synced_timeStamp:J

    iput-wide v4, p0, Lcom/android/server/bridge/operations/DbObserver;->mCalendar_last_synced_timeStamp:J

    .line 48
    iput v2, p0, Lcom/android/server/bridge/operations/DbObserver;->mNo_of_contact_last_synced:I

    iput v2, p0, Lcom/android/server/bridge/operations/DbObserver;->mNo_of_events_last_synced:I

    iput v2, p0, Lcom/android/server/bridge/operations/DbObserver;->mNo_of_tasks_last_synced:I

    .line 58
    new-instance v0, Lcom/android/server/bridge/operations/DbObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/bridge/operations/DbObserver$1;-><init>(Lcom/android/server/bridge/operations/DbObserver;)V

    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContactRunnable:Ljava/lang/Runnable;

    .line 80
    new-instance v0, Lcom/android/server/bridge/operations/DbObserver$2;

    invoke-direct {v0, p0}, Lcom/android/server/bridge/operations/DbObserver$2;-><init>(Lcom/android/server/bridge/operations/DbObserver;)V

    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mCalendarRunnable:Ljava/lang/Runnable;

    .line 111
    new-instance v0, Lcom/android/server/bridge/operations/DbObserver$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/bridge/operations/DbObserver$3;-><init>(Lcom/android/server/bridge/operations/DbObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->rawContactObserver:Landroid/database/ContentObserver;

    .line 135
    new-instance v0, Lcom/android/server/bridge/operations/DbObserver$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/bridge/operations/DbObserver$4;-><init>(Lcom/android/server/bridge/operations/DbObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->calendarEventObserver:Landroid/database/ContentObserver;

    .line 155
    new-instance v0, Lcom/android/server/bridge/operations/DbObserver$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/bridge/operations/DbObserver$5;-><init>(Lcom/android/server/bridge/operations/DbObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->calendarTaskObserver:Landroid/database/ContentObserver;

    .line 51
    iput-object p1, p0, Lcom/android/server/bridge/operations/DbObserver;->mContext:Landroid/content/Context;

    .line 52
    iput p2, p0, Lcom/android/server/bridge/operations/DbObserver;->mUserId:I

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mHandler:Landroid/os/Handler;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/server/bridge/operations/DbObserver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "rcp"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemRemoteContentManager;

    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 50
    return-void
.end method

.method private getNoOfEvents()I
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 333
    const/4 v8, 0x0

    .line 334
    .local v8, "mNoOfEvents":I
    const/4 v7, 0x0

    .line 336
    .local v7, "mCursor":Landroid/database/Cursor;
    const-string/jumbo v3, "ACCOUNT_NAME NOT LIKE ? AND DELETED=? "

    .line 337
    .local v3, "mSelection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .line 338
    const-string/jumbo v0, "calendar_personal%"

    aput-object v0, v4, v1

    const-string/jumbo v0, "0"

    aput-object v0, v4, v2

    .line 342
    .local v4, "mSelectionArgs":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/bridge/operations/DbObserver;->CALENDAR_EVENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 343
    const-string/jumbo v5, "_id"

    const/4 v9, 0x0

    aput-object v5, v2, v9

    .line 344
    const/4 v5, 0x0

    .line 342
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 345
    .local v7, "mCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 346
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 351
    :cond_0
    if-eqz v7, :cond_1

    .line 352
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No Of Events  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return v8

    .line 348
    .end local v7    # "mCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v6

    .line 349
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    if-eqz v7, :cond_2

    .line 352
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 353
    :cond_2
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No Of Events  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return v8

    .line 350
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 351
    if-eqz v7, :cond_3

    .line 352
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 353
    :cond_3
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No Of Events  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return v8
.end method

.method private getNoOfRawContacts()I
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 301
    const/4 v7, 0x0

    .line 302
    .local v7, "mCount":I
    const/4 v8, 0x0

    .line 303
    .local v8, "mCursor":Landroid/database/Cursor;
    const-string/jumbo v3, "account_type<> ? AND account_type NOT LIKE ? AND deleted=?"

    .line 306
    .local v3, "mSelection":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    .line 307
    const-string/jumbo v0, "vnd.sec.contact.phone_personal"

    aput-object v0, v4, v1

    const-string/jumbo v0, "vnd.sec.contact.phone_knox%"

    aput-object v0, v4, v2

    const-string/jumbo v0, "0"

    const/4 v1, 0x2

    aput-object v0, v4, v1

    .line 311
    .local v4, "mSelectionArgs":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/bridge/operations/DbObserver;->CON_RAW_CONTACTS_URI:Landroid/net/Uri;

    .line 312
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 313
    const-string/jumbo v5, "_id"

    const/4 v9, 0x0

    aput-object v5, v2, v9

    .line 315
    const/4 v5, 0x0

    .line 311
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 316
    .local v8, "mCursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 317
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 322
    :cond_0
    if-eqz v8, :cond_1

    .line 323
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No Of Raw Contacts  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return v7

    .line 319
    .end local v8    # "mCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v6

    .line 320
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    if-eqz v8, :cond_2

    .line 323
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No Of Raw Contacts  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return v7

    .line 321
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 322
    if-eqz v8, :cond_3

    .line 323
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 324
    :cond_3
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No Of Raw Contacts  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return v7
.end method

.method private getNoOfTasks()I
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 362
    const/4 v8, 0x0

    .line 363
    .local v8, "mNoOfTasks":I
    const/4 v7, 0x0

    .line 365
    .local v7, "mCursor":Landroid/database/Cursor;
    const-string/jumbo v3, "ACCOUNTNAME NOT LIKE ? AND DELETED=?"

    .line 366
    .local v3, "mSelection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .line 367
    const-string/jumbo v0, "My task (%"

    aput-object v0, v4, v1

    const-string/jumbo v0, "0"

    aput-object v0, v4, v2

    .line 371
    .local v4, "mSelectionArgs":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/bridge/operations/DbObserver;->CALENDAR_TASK_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 372
    const-string/jumbo v5, "_id"

    const/4 v9, 0x0

    aput-object v5, v2, v9

    .line 373
    const/4 v5, 0x0

    .line 371
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 374
    .local v7, "mCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 375
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 380
    :cond_0
    if-eqz v7, :cond_1

    .line 381
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No Of Tasks  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return v8

    .line 377
    .end local v7    # "mCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v6

    .line 378
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    if-eqz v7, :cond_2

    .line 381
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No Of Tasks  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return v8

    .line 379
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 380
    if-eqz v7, :cond_3

    .line 381
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 382
    :cond_3
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No Of Tasks  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return v8
.end method

.method private getRecentlyUpdateEventsList()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 392
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRecentlyUpdateEventsList() mCalendar_last_synced_timeStamp :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v12, p0, Lcom/android/server/bridge/operations/DbObserver;->mCalendar_last_synced_timeStamp:J

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v8, 0x0

    .line 394
    .local v8, "mCursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 396
    .local v9, "mEventsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string/jumbo v3, "ACCOUNT_NAME NOT LIKE ? AND DELETED=? AND secTimeStamp > ? "

    .line 397
    .local v3, "mSelection":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    .line 398
    const-string/jumbo v0, "calendar_personal%"

    aput-object v0, v4, v5

    const-string/jumbo v0, "0"

    aput-object v0, v4, v11

    iget-wide v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mCalendar_last_synced_timeStamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v4, v1

    .line 402
    .local v4, "mSelectionArgs":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/bridge/operations/DbObserver;->CALENDAR_EVENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 403
    const-string/jumbo v5, "_id"

    const/4 v11, 0x0

    aput-object v5, v2, v11

    .line 404
    const-string/jumbo v5, "_id ASC "

    .line 402
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 406
    .local v8, "mCursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCursor.getCount()  :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    .end local v9    # "mEventsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v10, "mEventsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 410
    const-string/jumbo v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 409
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEventsList  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v9, v10

    .line 419
    .end local v7    # "i":I
    .end local v10    # "mEventsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    if-eqz v8, :cond_2

    .line 420
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 422
    :cond_2
    return-object v9

    .line 416
    .end local v8    # "mCursor":Landroid/database/Cursor;
    .restart local v9    # "mEventsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v6

    .line 417
    .end local v9    # "mEventsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v6, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 419
    if-eqz v8, :cond_3

    .line 420
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 422
    :cond_3
    return-object v9

    .line 418
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 419
    :goto_2
    if-eqz v8, :cond_4

    .line 420
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 422
    :cond_4
    return-object v9

    .line 418
    .restart local v7    # "i":I
    .restart local v8    # "mCursor":Landroid/database/Cursor;
    .restart local v10    # "mEventsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "mEventsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v9, "mEventsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_2

    .line 416
    .end local v9    # "mEventsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10    # "mEventsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    move-object v9, v10

    .end local v10    # "mEventsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9    # "mEventsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_1
.end method

.method private getRecentlyUpdateRawContactIDList()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRecentlyUpdateRawContactIDList() mContact_last_synced_timeStamp :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v12, p0, Lcom/android/server/bridge/operations/DbObserver;->mContact_last_synced_timeStamp:J

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v8, 0x0

    .line 261
    .local v8, "mCursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 264
    .local v9, "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    const-string/jumbo v3, "account_type<>? AND account_type NOT LIKE ? AND contact_id IN (SELECT _id FROM contacts WHERE contact_last_updated_timestamp > ? )"

    .line 268
    .local v3, "mSelection":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    .line 269
    const-string/jumbo v0, "vnd.sec.contact.phone_personal"

    const/4 v1, 0x0

    aput-object v0, v4, v1

    const-string/jumbo v0, "vnd.sec.contact.phone_knox%"

    const/4 v1, 0x1

    aput-object v0, v4, v1

    iget-wide v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContact_last_synced_timeStamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v4, v1

    .line 272
    .local v4, "mSelectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRecentlyUpdateRawContactIDList() current time :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 275
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v5, "_id"

    const/4 v11, 0x0

    aput-object v5, v2, v11

    .line 278
    const-string/jumbo v5, "_id ASC "

    .line 274
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 280
    .local v8, "mCursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCursor.getCount()  :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    .local v10, "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .end local v9    # "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v7, "i":I
    :goto_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 284
    const-string/jumbo v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 283
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRawContactIDList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v9, v10

    .line 292
    .end local v7    # "i":I
    .end local v10    # "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    if-eqz v8, :cond_2

    .line 293
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 295
    :cond_2
    return-object v9

    .line 289
    .end local v3    # "mSelection":Ljava/lang/String;
    .end local v4    # "mSelectionArgs":[Ljava/lang/String;
    .end local v8    # "mCursor":Landroid/database/Cursor;
    .restart local v9    # "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v6

    .line 290
    .end local v9    # "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v6, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 292
    if-eqz v8, :cond_3

    .line 293
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 295
    :cond_3
    return-object v9

    .line 291
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 292
    :goto_2
    if-eqz v8, :cond_4

    .line 293
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 295
    :cond_4
    return-object v9

    .line 291
    .restart local v3    # "mSelection":Ljava/lang/String;
    .restart local v4    # "mSelectionArgs":[Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v8    # "mCursor":Landroid/database/Cursor;
    .restart local v10    # "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v9, "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_2

    .line 289
    .end local v9    # "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10    # "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    move-object v9, v10

    .end local v10    # "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9    # "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_1
.end method

.method private getRecentlyUpdateTasksList()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 431
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRecentlyUpdateTasksList() mCalendar_last_synced_timeStamp :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v12, p0, Lcom/android/server/bridge/operations/DbObserver;->mCalendar_last_synced_timeStamp:J

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v8, 0x0

    .line 433
    .local v8, "mCursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 435
    .local v9, "mTasksList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string/jumbo v3, "ACCOUNTNAME NOT LIKE ? AND DELETED=? AND secTimeStamp > ? "

    .line 436
    .local v3, "mSelection":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    .line 437
    const-string/jumbo v0, "My task (%"

    aput-object v0, v4, v5

    const-string/jumbo v0, "0"

    aput-object v0, v4, v11

    iget-wide v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mCalendar_last_synced_timeStamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v4, v1

    .line 441
    .local v4, "mSelectionArgs":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/bridge/operations/DbObserver;->CALENDAR_TASK_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 442
    const-string/jumbo v5, "_id"

    const/4 v11, 0x0

    aput-object v5, v2, v11

    .line 443
    const-string/jumbo v5, "_id ASC "

    .line 441
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 445
    .local v8, "mCursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCursor.getCount()  :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    .end local v9    # "mTasksList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v10, "mTasksList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 449
    const-string/jumbo v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 448
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTasksList  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v9, v10

    .line 458
    .end local v7    # "i":I
    .end local v10    # "mTasksList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    if-eqz v8, :cond_2

    .line 459
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 461
    :cond_2
    return-object v9

    .line 455
    .end local v8    # "mCursor":Landroid/database/Cursor;
    .restart local v9    # "mTasksList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v6

    .line 456
    .end local v9    # "mTasksList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v6, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 458
    if-eqz v8, :cond_3

    .line 459
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 461
    :cond_3
    return-object v9

    .line 457
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 458
    :goto_2
    if-eqz v8, :cond_4

    .line 459
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 461
    :cond_4
    return-object v9

    .line 457
    .restart local v7    # "i":I
    .restart local v8    # "mCursor":Landroid/database/Cursor;
    .restart local v10    # "mTasksList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "mTasksList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v9, "mTasksList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_2

    .line 455
    .end local v9    # "mTasksList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10    # "mTasksList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    move-object v9, v10

    .end local v10    # "mTasksList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9    # "mTasksList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_1
.end method

.method private registerCalendarObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 239
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerCalendarObserver"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/bridge/operations/DbObserver;->CALENDAR_EVENT_URI:Landroid/net/Uri;

    .line 243
    iget-object v2, p0, Lcom/android/server/bridge/operations/DbObserver;->calendarEventObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/bridge/operations/DbObserver;->mUserId:I

    .line 242
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 244
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/bridge/operations/DbObserver;->CALENDAR_TASK_URI:Landroid/net/Uri;

    .line 245
    iget-object v2, p0, Lcom/android/server/bridge/operations/DbObserver;->calendarTaskObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/bridge/operations/DbObserver;->mUserId:I

    .line 244
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mCalendar_last_synced_timeStamp:J

    .line 247
    invoke-direct {p0}, Lcom/android/server/bridge/operations/DbObserver;->getNoOfEvents()I

    move-result v0

    iput v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mNo_of_events_last_synced:I

    .line 248
    invoke-direct {p0}, Lcom/android/server/bridge/operations/DbObserver;->getNoOfTasks()I

    move-result v0

    iput v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mNo_of_tasks_last_synced:I

    .line 238
    return-void
.end method

.method private registerContactObserver()V
    .locals 5

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerContactObserver"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/bridge/operations/DbObserver;->CON_RAW_CONTACTS_URI:Landroid/net/Uri;

    .line 227
    iget-object v2, p0, Lcom/android/server/bridge/operations/DbObserver;->rawContactObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/bridge/operations/DbObserver;->mUserId:I

    .line 226
    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContact_last_synced_timeStamp:J

    .line 229
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerContactObserver, mContact_last_synced_timeStamp :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/bridge/operations/DbObserver;->mContact_last_synced_timeStamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-direct {p0}, Lcom/android/server/bridge/operations/DbObserver;->getNoOfRawContacts()I

    move-result v0

    iput v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mNo_of_contact_last_synced:I

    .line 224
    return-void
.end method

.method private startCalendarSync()V
    .locals 6

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Calendar onChange startCalendarSync"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v1, p0, Lcom/android/server/bridge/operations/DbObserver;->mCalendarRunnable:Ljava/lang/Runnable;

    monitor-enter v1

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/bridge/operations/DbObserver;->mCalendarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 201
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/bridge/operations/DbObserver;->mCalendarRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 197
    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private unRegisterCalendarObserver()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterCalendarObserver"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/bridge/operations/DbObserver;->calendarEventObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 254
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/bridge/operations/DbObserver;->calendarTaskObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 251
    return-void
.end method

.method private unRegisterContactObserver()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterContactObserver"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/bridge/operations/DbObserver;->rawContactObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 233
    return-void
.end method


# virtual methods
.method public registerObserver(Ljava/lang/String;)V
    .locals 1
    .param p1, "mSyncerName"    # Ljava/lang/String;

    .prologue
    .line 206
    const-string/jumbo v0, "Contacts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    invoke-direct {p0}, Lcom/android/server/bridge/operations/DbObserver;->registerContactObserver()V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    const-string/jumbo v0, "Calendar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/android/server/bridge/operations/DbObserver;->registerCalendarObserver()V

    goto :goto_0
.end method

.method public unRegisterObserver(Ljava/lang/String;)V
    .locals 1
    .param p1, "mSyncerName"    # Ljava/lang/String;

    .prologue
    .line 214
    const-string/jumbo v0, "Contacts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/android/server/bridge/operations/DbObserver;->unRegisterContactObserver()V

    .line 213
    :goto_0
    return-void

    .line 216
    :cond_0
    const-string/jumbo v0, "Calendar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    invoke-direct {p0}, Lcom/android/server/bridge/operations/DbObserver;->unRegisterCalendarObserver()V

    goto :goto_0

    .line 219
    :cond_1
    invoke-direct {p0}, Lcom/android/server/bridge/operations/DbObserver;->unRegisterContactObserver()V

    .line 220
    invoke-direct {p0}, Lcom/android/server/bridge/operations/DbObserver;->unRegisterCalendarObserver()V

    goto :goto_0
.end method
