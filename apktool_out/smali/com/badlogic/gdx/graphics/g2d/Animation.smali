.class public Lcom/badlogic/gdx/graphics/g2d/Animation;
.super Ljava/lang/Object;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/Animation$1;,
        Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;
    }
.end annotation


# instance fields
.field private animationDuration:F

.field private frameDuration:F

.field final keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private lastFrameNumber:I

.field private lastStateTime:F

.field private playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;


# direct methods
.method public constructor <init>(FLcom/badlogic/gdx/utils/Array;)V
    .locals 4
    .param p1, "frameDuration"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/badlogic/gdx/utils/Array",
            "<+",
            "Lcom/badlogic/gdx/graphics/g2d/TextureRegion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, "keyFrames":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<+Lcom/badlogic/gdx/graphics/g2d/TextureRegion;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->NORMAL:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    .line 53
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->frameDuration:F

    .line 54
    iget v2, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->animationDuration:F

    .line 55
    iget v2, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    new-array v2, v2, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 57
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aput-object v2, v3, v0

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->NORMAL:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    .line 61
    return-void
.end method

.method public constructor <init>(FLcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;)V
    .locals 4
    .param p1, "frameDuration"    # F
    .param p3, "playMode"    # Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/badlogic/gdx/utils/Array",
            "<+",
            "Lcom/badlogic/gdx/graphics/g2d/TextureRegion;",
            ">;",
            "Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    .local p2, "keyFrames":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<+Lcom/badlogic/gdx/graphics/g2d/TextureRegion;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->NORMAL:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    .line 70
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->frameDuration:F

    .line 71
    iget v2, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->animationDuration:F

    .line 72
    iget v2, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    new-array v2, v2, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 74
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aput-object v2, v3, v0

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    .line 78
    return-void
.end method

.method public varargs constructor <init>(F[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 1
    .param p1, "frameDuration"    # F
    .param p2, "keyFrames"    # [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->NORMAL:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    .line 85
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->frameDuration:F

    .line 86
    array-length v0, p2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->animationDuration:F

    .line 87
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 88
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->NORMAL:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    .line 89
    return-void
.end method


# virtual methods
.method public getAnimationDuration()F
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->animationDuration:F

    return v0
.end method

.method public getFrameDuration()F
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->frameDuration:F

    return v0
.end method

.method public getKeyFrame(F)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 2
    .param p1, "stateTime"    # F

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Animation;->getKeyFrameIndex(F)I

    move-result v0

    .line 127
    .local v0, "frameNumber":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getKeyFrame(FZ)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 4
    .param p1, "stateTime"    # F
    .param p2, "looping"    # Z

    .prologue
    .line 101
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    .line 102
    .local v1, "oldPlayMode":Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;
    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->NORMAL:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->REVERSED:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    if-ne v2, v3, :cond_3

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->NORMAL:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    if-ne v2, v3, :cond_2

    .line 104
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->LOOP:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    .line 114
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Animation;->getKeyFrame(F)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    .line 115
    .local v0, "frame":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    .line 116
    return-object v0

    .line 106
    .end local v0    # "frame":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    :cond_2
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->LOOP_REVERSED:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    goto :goto_0

    .line 107
    :cond_3
    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->NORMAL:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->REVERSED:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    if-eq v2, v3, :cond_1

    .line 108
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->LOOP_REVERSED:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    if-ne v2, v3, :cond_4

    .line 109
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->REVERSED:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    goto :goto_0

    .line 111
    :cond_4
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->LOOP:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    goto :goto_0
.end method

.method public getKeyFrameIndex(F)I
    .locals 5
    .param p1, "stateTime"    # F

    .prologue
    const/4 v2, 0x0

    .line 134
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v0, v2

    .line 168
    :goto_0
    return v0

    .line 136
    :cond_0
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->frameDuration:F

    div-float v3, p1, v3

    float-to-int v0, v3

    .line 137
    .local v0, "frameNumber":I
    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/Animation$1;->$SwitchMap$com$badlogic$gdx$graphics$g2d$Animation$PlayMode:[I

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 165
    :cond_1
    :goto_1
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->lastFrameNumber:I

    .line 166
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->lastStateTime:F

    goto :goto_0

    .line 139
    :pswitch_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 140
    goto :goto_1

    .line 142
    :pswitch_1
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v2, v2

    rem-int/2addr v0, v2

    .line 143
    goto :goto_1

    .line 145
    :pswitch_2
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x2

    rem-int/2addr v0, v2

    .line 146
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v3, v3

    sub-int v3, v0, v3

    sub-int v0, v2, v3

    goto :goto_1

    .line 149
    :pswitch_3
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->lastStateTime:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->frameDuration:F

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 150
    .local v1, "lastFrameNumber":I
    if-eq v1, v0, :cond_2

    .line 151
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v0

    goto :goto_1

    .line 153
    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->lastFrameNumber:I

    .line 155
    goto :goto_1

    .line 157
    .end local v1    # "lastFrameNumber":I
    :pswitch_4
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v3, v3

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 158
    goto :goto_1

    .line 160
    :pswitch_5
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v2, v2

    rem-int/2addr v0, v2

    .line 161
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v2, v2

    sub-int/2addr v2, v0

    add-int/lit8 v0, v2, -0x1

    goto :goto_1

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getKeyFrames()[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getPlayMode()Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    return-object v0
.end method

.method public isAnimationFinished(F)Z
    .locals 2
    .param p1, "stateTime"    # F

    .prologue
    .line 193
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->frameDuration:F

    div-float v1, p1, v1

    float-to-int v0, v1

    .line 194
    .local v0, "frameNumber":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFrameDuration(F)V
    .locals 1
    .param p1, "frameDuration"    # F

    .prologue
    .line 200
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->frameDuration:F

    .line 201
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->animationDuration:F

    .line 202
    return-void
.end method

.method public setPlayMode(Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;)V
    .locals 0
    .param p1, "playMode"    # Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    .line 187
    return-void
.end method
