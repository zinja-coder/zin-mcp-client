.class public Lde/fgerbig/spacepeng/components/AnimationParameters;
.super Lcom/artemis/Component;
.source "AnimationParameters.java"


# annotations
.annotation build Lcom/artemis/annotations/PooledWeaver;
.end annotation


# instance fields
.field public frameDuration:F

.field public playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

.field public stateTime:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/artemis/Component;-><init>()V

    .line 26
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lde/fgerbig/spacepeng/components/AnimationParameters;->frameDuration:F

    .line 27
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->NORMAL:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput-object v0, p0, Lde/fgerbig/spacepeng/components/AnimationParameters;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lde/fgerbig/spacepeng/components/AnimationParameters;->stateTime:F

    .line 33
    return-void
.end method
