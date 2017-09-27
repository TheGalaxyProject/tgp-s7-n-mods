.class Lcom/android/server/VibratorService$VibrationInfo;
.super Ljava/lang/Object;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VibrationInfo"
.end annotation


# instance fields
.field commonType:I

.field data:[I

.field frequency:I

.field intensity:I

.field opPkg:Ljava/lang/String;

.field pattern:[J

.field repeat:I

.field startCurTime:Ljava/lang/String;

.field startTime:J

.field timeout:J

.field uid:I

.field usageHint:I


# direct methods
.method public constructor <init>(JJ[JIIILjava/lang/String;II[IILjava/lang/String;)V
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "startTime"    # J
    .param p5, "pattern"    # [J
    .param p6, "repeat"    # I
    .param p7, "usageHint"    # I
    .param p8, "uid"    # I
    .param p9, "opPkg"    # Ljava/lang/String;
    .param p10, "frequency"    # I
    .param p11, "type"    # I
    .param p12, "data"    # [I
    .param p13, "intensity"    # I
    .param p14, "startCurTime"    # Ljava/lang/String;

    .prologue
    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput-wide p1, p0, Lcom/android/server/VibratorService$VibrationInfo;->timeout:J

    .line 419
    iput-wide p3, p0, Lcom/android/server/VibratorService$VibrationInfo;->startTime:J

    .line 420
    iput-object p5, p0, Lcom/android/server/VibratorService$VibrationInfo;->pattern:[J

    .line 421
    iput p6, p0, Lcom/android/server/VibratorService$VibrationInfo;->repeat:I

    .line 422
    iput p7, p0, Lcom/android/server/VibratorService$VibrationInfo;->usageHint:I

    .line 423
    iput p8, p0, Lcom/android/server/VibratorService$VibrationInfo;->uid:I

    .line 424
    iput-object p9, p0, Lcom/android/server/VibratorService$VibrationInfo;->opPkg:Ljava/lang/String;

    .line 425
    iput p10, p0, Lcom/android/server/VibratorService$VibrationInfo;->frequency:I

    .line 426
    iput p11, p0, Lcom/android/server/VibratorService$VibrationInfo;->commonType:I

    .line 427
    iput-object p12, p0, Lcom/android/server/VibratorService$VibrationInfo;->data:[I

    .line 428
    iput p13, p0, Lcom/android/server/VibratorService$VibrationInfo;->intensity:I

    .line 429
    iput-object p14, p0, Lcom/android/server/VibratorService$VibrationInfo;->startCurTime:Ljava/lang/String;

    .line 417
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 435
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->startCurTime:Ljava/lang/String;

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 436
    const-string/jumbo v1, " "

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 437
    const-string/jumbo v1, "timeout: "

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 438
    iget-wide v2, p0, Lcom/android/server/VibratorService$VibrationInfo;->timeout:J

    .line 434
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 439
    const-string/jumbo v1, ", startTime: "

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 440
    iget-wide v2, p0, Lcom/android/server/VibratorService$VibrationInfo;->startTime:J

    .line 434
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 441
    const-string/jumbo v1, ", pattern: "

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 442
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->pattern:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 443
    const-string/jumbo v1, ", repeat: "

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 444
    iget v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->repeat:I

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 445
    const-string/jumbo v1, ", usageHint: "

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 446
    iget v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->usageHint:I

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 447
    const-string/jumbo v1, ", uid: "

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 448
    iget v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->uid:I

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 449
    const-string/jumbo v1, ", opPkg: "

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 450
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->opPkg:Ljava/lang/String;

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 451
    const-string/jumbo v1, " f: "

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 452
    iget v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->frequency:I

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 453
    const-string/jumbo v1, ", type: "

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 454
    iget v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->commonType:I

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 455
    const-string/jumbo v1, ", i: "

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 456
    iget v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->intensity:I

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 457
    const-string/jumbo v1, ", d: "

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 458
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->data:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
