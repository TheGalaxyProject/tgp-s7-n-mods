.class public Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;
.super Ljava/lang/Object;
.source "CalendarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent$StartTimeComparator;
    }
.end annotation


# instance fields
.field public description:Ljava/lang/String;

.field public endTime:J

.field public eventId:J

.field public isAllDay:Z

.field public location:Ljava/lang/String;

.field public startTime:J

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->eventId:J

    .line 204
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->title:Ljava/lang/String;

    .line 205
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->location:Ljava/lang/String;

    .line 206
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->description:Ljava/lang/String;

    .line 207
    iput-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->startTime:J

    .line 208
    iput-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->endTime:J

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->isAllDay:Z

    .line 211
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 8
    .param p1, "cur"    # Landroid/database/Cursor;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->eventId:J

    .line 204
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->title:Ljava/lang/String;

    .line 205
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->location:Ljava/lang/String;

    .line 206
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->description:Ljava/lang/String;

    .line 207
    iput-wide v6, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->startTime:J

    .line 208
    iput-wide v6, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->endTime:J

    .line 209
    iput-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->isAllDay:Z

    .line 215
    if-nez p1, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->eventId:J

    .line 218
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->title:Ljava/lang/String;

    .line 219
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->location:Ljava/lang/String;

    .line 220
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->description:Ljava/lang/String;

    .line 221
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->startTime:J

    .line 222
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->endTime:J

    .line 223
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iput-boolean v4, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->isAllDay:Z

    .line 214
    :cond_1
    return-void
.end method


# virtual methods
.method public getFormattedStartEndTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 255
    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->isAllDay:Z

    if-eqz v1, :cond_0

    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->servicebox_event_time_all_day:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 259
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "h:mm a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 260
    .local v0, "timeFormatter":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ~ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->endTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFormattedStartTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 245
    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->isAllDay:Z

    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->servicebox_event_time_all_day:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 249
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "h:mm a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, "startTimeFormatter":Ljava/text/SimpleDateFormat;
    iget-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public showCalendarActivity(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 280
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v2, "intent":Landroid/content/Intent;
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->eventId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 282
    .local v1, "eventUri":Landroid/net/Uri;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 284
    :try_start_0
    const-string/jumbo v3, "com.android.calendar.event.EditEventActivity"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    const-string/jumbo v3, "beginTime"

    iget-wide v4, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->startTime:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 288
    const-string/jumbo v3, "endTime"

    iget-wide v4, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->endTime:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 289
    const-string/jumbo v3, "DetailMode"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 290
    const-string/jumbo v3, "launch_from_widget"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 292
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 279
    return-void

    .line 285
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 266
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy MMMM d (EEEE)"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, "displayFormatter":Ljava/text/SimpleDateFormat;
    iget-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "formattedTime":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Event info : eventId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 270
    iget-wide v4, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->eventId:J

    .line 269
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 271
    const-string/jumbo v3, ", title = "

    .line 269
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 271
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->title:Ljava/lang/String;

    .line 269
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 272
    const-string/jumbo v3, ", location = "

    .line 269
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 272
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->location:Ljava/lang/String;

    .line 269
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 273
    const-string/jumbo v3, ", description = "

    .line 269
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 273
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->description:Ljava/lang/String;

    .line 269
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 274
    const-string/jumbo v3, ", start time = "

    .line 269
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 274
    iget-wide v4, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->startTime:J

    .line 269
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 275
    const-string/jumbo v3, ", end time = "

    .line 269
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 275
    iget-wide v4, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->endTime:J

    .line 269
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 276
    const-string/jumbo v3, ", is all day = "

    .line 269
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 276
    iget-boolean v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->isAllDay:Z

    .line 269
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
