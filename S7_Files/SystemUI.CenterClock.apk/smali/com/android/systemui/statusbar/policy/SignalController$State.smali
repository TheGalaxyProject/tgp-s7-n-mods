.class Lcom/android/systemui/statusbar/policy/SignalController$State;
.super Ljava/lang/Object;
.source "SignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/SignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# instance fields
.field activityIn:Z

.field activityOut:Z

.field connected:Z

.field enabled:Z

.field iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

.field inetCondition:I

.field level:I

.field rssi:I

.field time:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 255
    .local p0, "this":Lcom/android/systemui/statusbar/policy/SignalController$State;, "Lcom/android/systemui/statusbar/policy/SignalController<TT;TI;>.State;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/statusbar/policy/SignalController$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/policy/SignalController$State;

    .prologue
    .line 269
    .local p0, "this":Lcom/android/systemui/statusbar/policy/SignalController$State;, "Lcom/android/systemui/statusbar/policy/SignalController<TT;TI;>.State;"
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    .line 270
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    .line 271
    iget v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    .line 272
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 273
    iget v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->inetCondition:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->inetCondition:I

    .line 274
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    .line 275
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    .line 276
    iget v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->rssi:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->rssi:I

    .line 277
    iget-wide v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->time:J

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->time:J

    .line 268
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/android/systemui/statusbar/policy/SignalController$State;, "Lcom/android/systemui/statusbar/policy/SignalController<TT;TI;>.State;"
    const/4 v1, 0x0

    .line 305
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController$State;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 306
    return v1

    :cond_0
    move-object v0, p1

    .line 308
    check-cast v0, Lcom/android/systemui/statusbar/policy/SignalController$State;

    .line 309
    .local v0, "other":Lcom/android/systemui/statusbar/policy/SignalController$State;
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    if-ne v2, v3, :cond_1

    .line 310
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    if-ne v2, v3, :cond_1

    .line 311
    iget v2, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    if-ne v2, v3, :cond_1

    .line 312
    iget v2, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->inetCondition:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->inetCondition:I

    if-ne v2, v3, :cond_1

    .line 313
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    if-ne v2, v3, :cond_1

    .line 314
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    if-ne v2, v3, :cond_1

    .line 315
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    if-ne v2, v3, :cond_1

    .line 316
    iget v2, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->rssi:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->rssi:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 309
    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 282
    .local p0, "this":Lcom/android/systemui/statusbar/policy/SignalController$State;, "Lcom/android/systemui/statusbar/policy/SignalController<TT;TI;>.State;"
    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->time:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SignalController$State;->toString(Ljava/lang/StringBuilder;)V

    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 287
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Empty "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController$State;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .local p0, "this":Lcom/android/systemui/statusbar/policy/SignalController$State;, "Lcom/android/systemui/statusbar/policy/SignalController<TT;TI;>.State;"
    const/16 v2, 0x2c

    .line 292
    const-string/jumbo v0, "connected="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 293
    const-string/jumbo v1, "enabled="

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 293
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 294
    const-string/jumbo v1, "level="

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 294
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 295
    const-string/jumbo v1, "inetCondition="

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 295
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->inetCondition:I

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 296
    const-string/jumbo v1, "iconGroup="

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 297
    const-string/jumbo v1, "activityIn="

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 297
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 298
    const-string/jumbo v1, "activityOut="

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 298
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 299
    const-string/jumbo v1, "rssi="

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 299
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->rssi:I

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 300
    const-string/jumbo v1, "lastModified="

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 300
    const-string/jumbo v1, "MM-dd hh:mm:ss"

    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->time:J

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 291
    return-void
.end method
