.class public Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
.super Ljava/lang/Object;
.source "ParticleEmitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$1;,
        Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;,
        Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;,
        Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;,
        Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;,
        Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;,
        Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;,
        Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$NumericValue;,
        Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;,
        Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;
    }
.end annotation


# static fields
.field private static final UPDATE_ANGLE:I = 0x2

.field private static final UPDATE_GRAVITY:I = 0x20

.field private static final UPDATE_ROTATION:I = 0x4

.field private static final UPDATE_SCALE:I = 0x1

.field private static final UPDATE_TINT:I = 0x40

.field private static final UPDATE_VELOCITY:I = 0x8

.field private static final UPDATE_WIND:I = 0x10


# instance fields
.field private accumulator:F

.field private active:[Z

.field private activeCount:I

.field private additive:Z

.field private aligned:Z

.field private allowCompletion:Z

.field private angleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

.field private attached:Z

.field private behind:Z

.field private bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

.field cleansUpBlendFunction:Z

.field private continuous:Z

.field private delay:F

.field private delayTimer:F

.field private delayValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

.field public duration:F

.field public durationTimer:F

.field private durationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

.field private emission:I

.field private emissionDelta:I

.field private emissionDiff:I

.field private emissionValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

.field private firstUpdate:Z

.field private flipX:Z

.field private flipY:Z

.field private gravityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

.field private imagePath:Ljava/lang/String;

.field private life:I

.field private lifeDiff:I

.field private lifeOffset:I

.field private lifeOffsetDiff:I

.field private lifeOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

.field private lifeValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

.field private maxParticleCount:I

.field private minParticleCount:I

.field private name:Ljava/lang/String;

.field private particles:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;

.field private premultipliedAlpha:Z

.field private rotationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

.field private scaleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

.field private spawnHeight:F

.field private spawnHeightDiff:F

.field private spawnHeightValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

.field private spawnShapeValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;

.field private spawnWidth:F

.field private spawnWidthDiff:F

.field private spawnWidthValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

.field private sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

.field private tintValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

.field private transparencyValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

.field private updateFlags:I

.field private velocityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

.field private windValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

.field private x:F

.field private xOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

.field private y:F

.field private yOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->delayValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    .line 39
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 42
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 43
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->scaleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 44
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->rotationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 45
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->velocityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 46
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->angleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 47
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->windValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 48
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->gravityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 49
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->transparencyValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->tintValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    .line 51
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->xOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    .line 52
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->yOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    .line 53
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 54
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 55
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;

    .line 60
    const/4 v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->maxParticleCount:I

    .line 77
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->duration:F

    .line 84
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->additive:Z

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->premultipliedAlpha:Z

    .line 86
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->cleansUpBlendFunction:Z

    .line 89
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->initialize()V

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;)V
    .locals 2
    .param p1, "emitter"    # Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    .prologue
    const/4 v1, 0x1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->delayValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    .line 39
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 42
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 43
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->scaleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 44
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->rotationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 45
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->velocityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 46
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->angleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 47
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->windValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 48
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->gravityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 49
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->transparencyValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->tintValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    .line 51
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->xOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    .line 52
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->yOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    .line 53
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 54
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 55
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;

    .line 60
    const/4 v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->maxParticleCount:I

    .line 77
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->duration:F

    .line 84
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->additive:Z

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->premultipliedAlpha:Z

    .line 86
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->cleansUpBlendFunction:Z

    .line 98
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .line 99
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->name:Ljava/lang/String;

    .line 100
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->imagePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->imagePath:Ljava/lang/String;

    .line 101
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->maxParticleCount:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->setMaxParticleCount(I)V

    .line 102
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->minParticleCount:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->minParticleCount:I

    .line 103
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->delayValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->delayValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;)V

    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;)V

    .line 105
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V

    .line 106
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V

    .line 107
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V

    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->scaleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->scaleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V

    .line 109
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->rotationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->rotationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V

    .line 110
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->velocityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->velocityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V

    .line 111
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->angleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->angleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V

    .line 112
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->windValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->windValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V

    .line 113
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->gravityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->gravityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V

    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->transparencyValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->transparencyValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V

    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->tintValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->tintValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;)V

    .line 116
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->xOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->xOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;)V

    .line 117
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->yOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->yOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;)V

    .line 118
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V

    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V

    .line 120
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;)V

    .line 121
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->attached:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->attached:Z

    .line 122
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->continuous:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->continuous:Z

    .line 123
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->aligned:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->aligned:Z

    .line 124
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->behind:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->behind:Z

    .line 125
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->additive:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->additive:Z

    .line 126
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->premultipliedAlpha:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->premultipliedAlpha:Z

    .line 127
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->cleansUpBlendFunction:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->cleansUpBlendFunction:Z

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/io/BufferedReader;)V
    .locals 2
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->delayValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    .line 39
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 42
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 43
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->scaleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 44
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->rotationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 45
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->velocityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 46
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->angleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 47
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->windValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 48
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->gravityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 49
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->transparencyValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->tintValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    .line 51
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->xOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    .line 52
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->yOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    .line 53
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 54
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .line 55
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;

    .line 60
    const/4 v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->maxParticleCount:I

    .line 77
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->duration:F

    .line 84
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->additive:Z

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->premultipliedAlpha:Z

    .line 86
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->cleansUpBlendFunction:Z

    .line 93
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->initialize()V

    .line 94
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->load(Ljava/io/BufferedReader;)V

    .line 95
    return-void
.end method

.method private activateParticle(I)V
    .locals 32
    .param p1, "index"    # I

    .prologue
    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->particles:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;

    move-object/from16 v28, v0

    aget-object v10, v28, p1

    .line 383
    .local v10, "particle":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;
    if-nez v10, :cond_0

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->particles:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->newParticle(Lcom/badlogic/gdx/graphics/g2d/Sprite;)Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;

    move-result-object v10

    aput-object v10, v28, p1

    .line 385
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->flipX:Z

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->flipY:Z

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v10, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->flip(ZZ)V

    .line 388
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationTimer:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->duration:F

    move/from16 v29, v0

    div-float v11, v28, v29

    .line 389
    .local v11, "percent":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->updateFlags:I

    move/from16 v24, v0

    .line 391
    .local v24, "updateFlags":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->life:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeDiff:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v30

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-int v28, v28, v29

    move/from16 v0, v28

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->life:I

    move/from16 v0, v28

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->currentLife:I

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->velocityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->active:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->velocityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newLowValue()F

    move-result v28

    move/from16 v0, v28

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->velocity:F

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->velocityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newHighValue()F

    move-result v28

    move/from16 v0, v28

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->velocityDiff:F

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->velocityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->isRelative()Z

    move-result v28

    if-nez v28, :cond_1

    iget v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->velocityDiff:F

    move/from16 v28, v0

    iget v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->velocity:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    move/from16 v0, v28

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->velocityDiff:F

    .line 399
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->angleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newLowValue()F

    move-result v28

    move/from16 v0, v28

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->angle:F

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->angleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newHighValue()F

    move-result v28

    move/from16 v0, v28

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->angleDiff:F

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->angleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->isRelative()Z

    move-result v28

    if-nez v28, :cond_2

    iget v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->angleDiff:F

    move/from16 v28, v0

    iget v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->angle:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    move/from16 v0, v28

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->angleDiff:F

    .line 402
    :cond_2
    const/4 v4, 0x0

    .line 403
    .local v4, "angle":F
    and-int/lit8 v28, v24, 0x2

    if-nez v28, :cond_3

    .line 404
    iget v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->angle:F

    move/from16 v28, v0

    iget v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->angleDiff:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->angleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v30

    mul-float v29, v29, v30

    add-float v4, v28, v29

    .line 405
    iput v4, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->angle:F

    .line 406
    invoke-static {v4}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v28

    move/from16 v0, v28

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->angleCos:F

    .line 407
    invoke-static {v4}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v28

    move/from16 v0, v28

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->angleSin:F

    .line 410
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getWidth()F

    move-result v22

    .line 411
    .local v22, "spriteWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->scaleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newLowValue()F

    move-result v28

    div-float v28, v28, v22

    move/from16 v0, v28

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->scale:F

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->scaleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newHighValue()F

    move-result v28

    div-float v28, v28, v22

    move/from16 v0, v28

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->scaleDiff:F

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->scaleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->isRelative()Z

    move-result v28

    if-nez v28, :cond_4

    iget v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->scaleDiff:F

    move/from16 v28, v0

    iget v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->scale:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    move/from16 v0, v28

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->scaleDiff:F

    .line 414
    :cond_4
    iget v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->scale:F

    move/from16 v28, v0

    iget v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->scaleDiff:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->scaleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v30

    mul-float v29, v29, v30

    add-float v28, v28, v29

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->setScale(F)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->rotationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->active:Z

    move/from16 v28, v0

    if-eqz v28, :cond_7

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->rotationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newLowValue()F

    move-result v28

    move/from16 v0, v28

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->rotation:F

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->rotationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newHighValue()F

    move-result v28

    move/from16 v0, v28

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->rotationDiff:F

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->rotationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->isRelative()Z

    move-result v28

    if-nez v28, :cond_5

    iget v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->rotationDiff:F

    move/from16 v28, v0

    iget v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->rotation:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    move/from16 v0, v28

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->rotationDiff:F

    .line 420
    :cond_5
    iget v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->rotation:F

    move/from16 v28, v0

    iget v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->rotationDiff:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->rotationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v30

    mul-float v29, v29, v30

    add-float v17, v28, v29

    .line 421
    .local v17, "rotation":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->aligned:Z

    move/from16 v28, v0

    if-eqz v28, :cond_6

    add-float v17, v17, v4

    .line 422
    :cond_6
    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->setRotation(F)V

    .line 425
    .end local v17    # "rotation":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->windValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->active:Z

    move/from16 v28, v0

    if-eqz v28, :cond_8

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->windValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newLowValue()F

    move-result v28

    move/from16 v0, v28

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->wind:F

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->windValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newHighValue()F

    move-result v28

    move/from16 v0, v28

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->windDiff:F

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->windValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->isRelative()Z

    move-result v28

    if-nez v28, :cond_8

    iget v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->windDiff:F

    move/from16 v28, v0

    iget v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->wind:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    move/from16 v0, v28

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->windDiff:F

    .line 431
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->gravityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->active:Z

    move/from16 v28, v0

    if-eqz v28, :cond_9

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->gravityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newLowValue()F

    move-result v28

    move/from16 v0, v28

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->gravity:F

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->gravityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newHighValue()F

    move-result v28

    move/from16 v0, v28

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->gravityDiff:F

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->gravityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->isRelative()Z

    move-result v28

    if-nez v28, :cond_9

    iget v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->gravityDiff:F

    move/from16 v28, v0

    iget v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->gravity:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    move/from16 v0, v28

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->gravityDiff:F

    .line 437
    :cond_9
    iget-object v5, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->tint:[F

    .line 438
    .local v5, "color":[F
    if-nez v5, :cond_a

    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v5, v0, [F

    iput-object v5, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->tint:[F

    .line 439
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->tintValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->getColor(F)[F

    move-result-object v23

    .line 440
    .local v23, "temp":[F
    const/16 v28, 0x0

    const/16 v29, 0x0

    aget v29, v23, v29

    aput v29, v5, v28

    .line 441
    const/16 v28, 0x1

    const/16 v29, 0x1

    aget v29, v23, v29

    aput v29, v5, v28

    .line 442
    const/16 v28, 0x2

    const/16 v29, 0x2

    aget v29, v23, v29

    aput v29, v5, v28

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->transparencyValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newLowValue()F

    move-result v28

    move/from16 v0, v28

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->transparency:F

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->transparencyValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newHighValue()F

    move-result v28

    iget v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->transparency:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    move/from16 v0, v28

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->transparencyDiff:F

    .line 448
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->x:F

    move/from16 v26, v0

    .line 449
    .local v26, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->xOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->active:Z

    move/from16 v28, v0

    if-eqz v28, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->xOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->newLowValue()F

    move-result v28

    add-float v26, v26, v28

    .line 450
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->y:F

    move/from16 v27, v0

    .line 451
    .local v27, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->yOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->active:Z

    move/from16 v28, v0

    if-eqz v28, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->yOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->newLowValue()F

    move-result v28

    add-float v27, v27, v28

    .line 452
    :cond_c
    sget-object v28, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$1;->$SwitchMap$com$badlogic$gdx$graphics$g2d$ParticleEmitter$SpawnShape:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->shape:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;->ordinal()I

    move-result v29

    aget v28, v28, v29

    packed-switch v28, :pswitch_data_0

    .line 516
    :cond_d
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getHeight()F

    move-result v21

    .line 517
    .local v21, "spriteHeight":F
    const/high16 v28, 0x40000000    # 2.0f

    div-float v28, v22, v28

    sub-float v28, v26, v28

    const/high16 v29, 0x40000000    # 2.0f

    div-float v29, v21, v29

    sub-float v29, v27, v29

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v22

    move/from16 v3, v21

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->setBounds(FFFF)V

    .line 519
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeOffset:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeOffsetDiff:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v30

    mul-float v29, v29, v30

    add-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v9, v0

    .line 520
    .local v9, "offsetTime":I
    if-lez v9, :cond_f

    .line 521
    iget v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->currentLife:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-lt v9, v0, :cond_e

    iget v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->currentLife:I

    move/from16 v28, v0

    add-int/lit8 v9, v28, -0x1

    .line 522
    :cond_e
    int-to-float v0, v9

    move/from16 v28, v0

    const/high16 v29, 0x447a0000    # 1000.0f

    div-float v28, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v10, v1, v9}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->updateParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;FI)Z

    .line 524
    :cond_f
    return-void

    .line 454
    .end local v9    # "offsetTime":I
    .end local v21    # "spriteHeight":F
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnWidth:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnWidthDiff:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v30

    mul-float v29, v29, v30

    add-float v25, v28, v29

    .line 455
    .local v25, "width":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnHeight:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnHeightDiff:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v30

    mul-float v29, v29, v30

    add-float v7, v28, v29

    .line 456
    .local v7, "height":F
    invoke-static/range {v25 .. v25}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v28

    const/high16 v29, 0x40000000    # 2.0f

    div-float v29, v25, v29

    sub-float v28, v28, v29

    add-float v26, v26, v28

    .line 457
    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v28

    const/high16 v29, 0x40000000    # 2.0f

    div-float v29, v7, v29

    sub-float v28, v28, v29

    add-float v27, v27, v28

    .line 458
    goto/16 :goto_0

    .line 461
    .end local v7    # "height":F
    .end local v25    # "width":F
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnWidth:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnWidthDiff:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v30

    mul-float v29, v29, v30

    add-float v25, v28, v29

    .line 462
    .restart local v25    # "width":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnHeight:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnHeightDiff:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v30

    mul-float v29, v29, v30

    add-float v7, v28, v29

    .line 463
    .restart local v7    # "height":F
    const/high16 v28, 0x40000000    # 2.0f

    div-float v15, v25, v28

    .line 464
    .local v15, "radiusX":F
    const/high16 v28, 0x40000000    # 2.0f

    div-float v16, v7, v28

    .line 465
    .local v16, "radiusY":F
    const/16 v28, 0x0

    cmpl-float v28, v15, v28

    if-eqz v28, :cond_d

    const/16 v28, 0x0

    cmpl-float v28, v16, v28

    if-eqz v28, :cond_d

    .line 466
    div-float v18, v15, v16

    .line 467
    .local v18, "scaleY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->edges:Z

    move/from16 v28, v0

    if-eqz v28, :cond_10

    .line 469
    sget-object v28, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$1;->$SwitchMap$com$badlogic$gdx$graphics$g2d$ParticleEmitter$SpawnEllipseSide:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->side:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;->ordinal()I

    move-result v29

    aget v28, v28, v29

    packed-switch v28, :pswitch_data_1

    .line 477
    const/high16 v28, 0x43b40000    # 360.0f

    invoke-static/range {v28 .. v28}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v20

    .line 480
    .local v20, "spawnAngle":F
    :goto_1
    invoke-static/range {v20 .. v20}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v6

    .line 481
    .local v6, "cosDeg":F
    invoke-static/range {v20 .. v20}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v19

    .line 482
    .local v19, "sinDeg":F
    mul-float v28, v6, v15

    add-float v26, v26, v28

    .line 483
    mul-float v28, v19, v15

    div-float v28, v28, v18

    add-float v27, v27, v28

    .line 484
    and-int/lit8 v28, v24, 0x2

    if-nez v28, :cond_d

    .line 485
    move/from16 v0, v20

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->angle:F

    .line 486
    iput v6, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->angleCos:F

    .line 487
    move/from16 v0, v19

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->angleSin:F

    goto/16 :goto_0

    .line 471
    .end local v6    # "cosDeg":F
    .end local v19    # "sinDeg":F
    .end local v20    # "spawnAngle":F
    :pswitch_2
    const/high16 v28, 0x43330000    # 179.0f

    invoke-static/range {v28 .. v28}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v28

    move/from16 v0, v28

    neg-float v0, v0

    move/from16 v20, v0

    .line 472
    .restart local v20    # "spawnAngle":F
    goto :goto_1

    .line 474
    .end local v20    # "spawnAngle":F
    :pswitch_3
    const/high16 v28, 0x43330000    # 179.0f

    invoke-static/range {v28 .. v28}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v20

    .line 475
    .restart local v20    # "spawnAngle":F
    goto :goto_1

    .line 490
    .end local v20    # "spawnAngle":F
    :cond_10
    mul-float v14, v15, v15

    .line 492
    .local v14, "radius2":F
    :cond_11
    invoke-static/range {v25 .. v25}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v28

    sub-float v12, v28, v15

    .line 493
    .local v12, "px":F
    invoke-static/range {v25 .. v25}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v28

    sub-float v13, v28, v15

    .line 494
    .local v13, "py":F
    mul-float v28, v12, v12

    mul-float v29, v13, v13

    add-float v28, v28, v29

    cmpg-float v28, v28, v14

    if-gtz v28, :cond_11

    .line 495
    add-float v26, v26, v12

    .line 496
    div-float v28, v13, v18

    add-float v27, v27, v28

    .line 497
    goto/16 :goto_0

    .line 504
    .end local v7    # "height":F
    .end local v12    # "px":F
    .end local v13    # "py":F
    .end local v14    # "radius2":F
    .end local v15    # "radiusX":F
    .end local v16    # "radiusY":F
    .end local v18    # "scaleY":F
    .end local v25    # "width":F
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnWidth:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnWidthDiff:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v30

    mul-float v29, v29, v30

    add-float v25, v28, v29

    .line 505
    .restart local v25    # "width":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnHeight:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnHeightDiff:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v30

    mul-float v29, v29, v30

    add-float v7, v28, v29

    .line 506
    .restart local v7    # "height":F
    const/16 v28, 0x0

    cmpl-float v28, v25, v28

    if-eqz v28, :cond_12

    .line 507
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v28

    mul-float v8, v25, v28

    .line 508
    .local v8, "lineX":F
    add-float v26, v26, v8

    .line 509
    div-float v28, v7, v25

    mul-float v28, v28, v8

    add-float v27, v27, v28

    .line 510
    goto/16 :goto_0

    .line 511
    .end local v8    # "lineX":F
    :cond_12
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v28

    mul-float v28, v28, v7

    add-float v27, v27, v28

    .line 512
    goto/16 :goto_0

    .line 452
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch

    .line 469
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initialize()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->setAlwaysActive(Z)V

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setAlwaysActive(Z)V

    .line 133
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setAlwaysActive(Z)V

    .line 134
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->scaleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setAlwaysActive(Z)V

    .line 135
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->transparencyValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setAlwaysActive(Z)V

    .line 136
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->setAlwaysActive(Z)V

    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setAlwaysActive(Z)V

    .line 138
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setAlwaysActive(Z)V

    .line 139
    return-void
.end method

.method static readBoolean(Ljava/io/BufferedReader;Ljava/lang/String;)Z
    .locals 1
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 988
    invoke-static {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readString(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static readBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p0, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 984
    invoke-static {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static readFloat(Ljava/io/BufferedReader;Ljava/lang/String;)F
    .locals 1
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 996
    invoke-static {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readString(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method static readInt(Ljava/io/BufferedReader;Ljava/lang/String;)I
    .locals 1
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 992
    invoke-static {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readString(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static readString(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 978
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 979
    .local v0, "line":Ljava/lang/String;
    if-nez v0, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 980
    :cond_0
    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 974
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private restart()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 341
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->delayValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->active:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->delayValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->newLowValue()F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->delay:F

    .line 342
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->delayTimer:F

    .line 344
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationTimer:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->duration:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationTimer:F

    .line 345
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->newLowValue()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->duration:F

    .line 347
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newLowValue()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emission:I

    .line 348
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newHighValue()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionDiff:I

    .line 349
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->isRelative()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionDiff:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emission:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionDiff:I

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newLowValue()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->life:I

    .line 352
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newHighValue()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeDiff:I

    .line 353
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->isRelative()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeDiff:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->life:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeDiff:I

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->active:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newLowValue()F

    move-result v0

    float-to-int v0, v0

    :goto_1
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeOffset:I

    .line 356
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newHighValue()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeOffsetDiff:I

    .line 357
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->isRelative()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeOffsetDiff:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeOffsetDiff:I

    .line 359
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newLowValue()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnWidth:F

    .line 360
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newHighValue()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnWidthDiff:F

    .line 361
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->isRelative()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnWidthDiff:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnWidth:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnWidthDiff:F

    .line 363
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newLowValue()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnHeight:F

    .line 364
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newHighValue()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnHeightDiff:F

    .line 365
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->isRelative()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnHeightDiff:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnHeight:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnHeightDiff:F

    .line 367
    :cond_4
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->updateFlags:I

    .line 368
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->angleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->active:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->angleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    array-length v0, v0

    if-le v0, v3, :cond_5

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->updateFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->updateFlags:I

    .line 369
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->velocityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->active:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->updateFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->updateFlags:I

    .line 370
    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->scaleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    array-length v0, v0

    if-le v0, v3, :cond_7

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->updateFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->updateFlags:I

    .line 371
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->rotationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->active:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->rotationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    array-length v0, v0

    if-le v0, v3, :cond_8

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->updateFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->updateFlags:I

    .line 372
    :cond_8
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->windValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->active:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->updateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->updateFlags:I

    .line 373
    :cond_9
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->gravityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->active:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->updateFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->updateFlags:I

    .line 374
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->tintValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->timeline:[F

    array-length v0, v0

    if-le v0, v3, :cond_b

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->updateFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->updateFlags:I

    .line 375
    :cond_b
    return-void

    :cond_c
    move v0, v1

    .line 341
    goto/16 :goto_0

    :cond_d
    move v0, v2

    .line 355
    goto/16 :goto_1
.end method

.method private updateParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;FI)Z
    .locals 18
    .param p1, "particle"    # Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;
    .param p2, "delta"    # F
    .param p3, "deltaMillis"    # I

    .prologue
    .line 527
    move-object/from16 v0, p1

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->currentLife:I

    sub-int v5, v12, p3

    .line 528
    .local v5, "life":I
    if-gtz v5, :cond_0

    const/4 v12, 0x0

    .line 586
    :goto_0
    return v12

    .line 529
    :cond_0
    move-object/from16 v0, p1

    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->currentLife:I

    .line 531
    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->currentLife:I

    int-to-float v13, v13

    move-object/from16 v0, p1

    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->life:I

    int-to-float v14, v14

    div-float/2addr v13, v14

    sub-float v6, v12, v13

    .line 532
    .local v6, "percent":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->updateFlags:I

    .line 534
    .local v8, "updateFlags":I
    and-int/lit8 v12, v8, 0x1

    if-eqz v12, :cond_1

    .line 535
    move-object/from16 v0, p1

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->scale:F

    move-object/from16 v0, p1

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->scaleDiff:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->scaleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v14, v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->setScale(F)V

    .line 537
    :cond_1
    and-int/lit8 v12, v8, 0x8

    if-eqz v12, :cond_a

    .line 538
    move-object/from16 v0, p1

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->velocity:F

    move-object/from16 v0, p1

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->velocityDiff:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->velocityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v14, v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    mul-float v9, v12, p2

    .line 541
    .local v9, "velocity":F
    and-int/lit8 v12, v8, 0x2

    if-eqz v12, :cond_7

    .line 542
    move-object/from16 v0, p1

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->angle:F

    move-object/from16 v0, p1

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->angleDiff:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->angleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v14, v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v14

    mul-float/2addr v13, v14

    add-float v3, v12, v13

    .line 543
    .local v3, "angle":F
    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v12

    mul-float v10, v9, v12

    .line 544
    .local v10, "velocityX":F
    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v12

    mul-float v11, v9, v12

    .line 545
    .local v11, "velocityY":F
    and-int/lit8 v12, v8, 0x4

    if-eqz v12, :cond_3

    .line 546
    move-object/from16 v0, p1

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->rotation:F

    move-object/from16 v0, p1

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->rotationDiff:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->rotationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v14, v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v14

    mul-float/2addr v13, v14

    add-float v7, v12, v13

    .line 547
    .local v7, "rotation":F
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->aligned:Z

    if-eqz v12, :cond_2

    add-float/2addr v7, v3

    .line 548
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->setRotation(F)V

    .line 560
    .end local v3    # "angle":F
    .end local v7    # "rotation":F
    :cond_3
    :goto_1
    and-int/lit8 v12, v8, 0x10

    if-eqz v12, :cond_4

    .line 561
    move-object/from16 v0, p1

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->wind:F

    move-object/from16 v0, p1

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->windDiff:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->windValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v14, v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    mul-float v12, v12, p2

    add-float/2addr v10, v12

    .line 563
    :cond_4
    and-int/lit8 v12, v8, 0x20

    if-eqz v12, :cond_5

    .line 564
    move-object/from16 v0, p1

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->gravity:F

    move-object/from16 v0, p1

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->gravityDiff:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->gravityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v14, v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    mul-float v12, v12, p2

    add-float/2addr v11, v12

    .line 566
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->translate(FF)V

    .line 573
    .end local v9    # "velocity":F
    .end local v10    # "velocityX":F
    .end local v11    # "velocityY":F
    :cond_6
    :goto_2
    and-int/lit8 v12, v8, 0x40

    if-eqz v12, :cond_b

    .line 574
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->tintValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    invoke-virtual {v12, v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->getColor(F)[F

    move-result-object v4

    .line 578
    .local v4, "color":[F
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->premultipliedAlpha:Z

    if-eqz v12, :cond_d

    .line 579
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->additive:Z

    if-eqz v12, :cond_c

    const/4 v2, 0x0

    .line 580
    .local v2, "alphaMultiplier":F
    :goto_4
    move-object/from16 v0, p1

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->transparency:F

    move-object/from16 v0, p1

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->transparencyDiff:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->transparencyValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v14, v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v14

    mul-float/2addr v13, v14

    add-float v1, v12, v13

    .line 581
    .local v1, "a":F
    const/4 v12, 0x0

    aget v12, v4, v12

    mul-float/2addr v12, v1

    const/4 v13, 0x1

    aget v13, v4, v13

    mul-float/2addr v13, v1

    const/4 v14, 0x2

    aget v14, v4, v14

    mul-float/2addr v14, v1

    mul-float v15, v1, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->setColor(FFFF)V

    .line 586
    .end local v1    # "a":F
    .end local v2    # "alphaMultiplier":F
    :goto_5
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 551
    .end local v4    # "color":[F
    .restart local v9    # "velocity":F
    :cond_7
    move-object/from16 v0, p1

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->angleCos:F

    mul-float v10, v9, v12

    .line 552
    .restart local v10    # "velocityX":F
    move-object/from16 v0, p1

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->angleSin:F

    mul-float v11, v9, v12

    .line 553
    .restart local v11    # "velocityY":F
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->aligned:Z

    if-nez v12, :cond_8

    and-int/lit8 v12, v8, 0x4

    if-eqz v12, :cond_3

    .line 554
    :cond_8
    move-object/from16 v0, p1

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->rotation:F

    move-object/from16 v0, p1

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->rotationDiff:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->rotationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v14, v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v14

    mul-float/2addr v13, v14

    add-float v7, v12, v13

    .line 555
    .restart local v7    # "rotation":F
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->aligned:Z

    if-eqz v12, :cond_9

    move-object/from16 v0, p1

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->angle:F

    add-float/2addr v7, v12

    .line 556
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->setRotation(F)V

    goto/16 :goto_1

    .line 568
    .end local v7    # "rotation":F
    .end local v9    # "velocity":F
    .end local v10    # "velocityX":F
    .end local v11    # "velocityY":F
    :cond_a
    and-int/lit8 v12, v8, 0x4

    if-eqz v12, :cond_6

    .line 569
    move-object/from16 v0, p1

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->rotation:F

    move-object/from16 v0, p1

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->rotationDiff:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->rotationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v14, v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->setRotation(F)V

    goto/16 :goto_2

    .line 576
    :cond_b
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->tint:[F

    .restart local v4    # "color":[F
    goto/16 :goto_3

    .line 579
    :cond_c
    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_4

    .line 583
    :cond_d
    const/4 v12, 0x0

    aget v12, v4, v12

    const/4 v13, 0x1

    aget v13, v4, v13

    const/4 v14, 0x2

    aget v14, v4, v14

    move-object/from16 v0, p1

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->transparency:F

    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->transparencyDiff:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->transparencyValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v17

    mul-float v16, v16, v17

    add-float v15, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->setColor(FFFF)V

    goto/16 :goto_5
.end method


# virtual methods
.method public addParticle()V
    .locals 5

    .prologue
    .line 149
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->activeCount:I

    .line 150
    .local v1, "activeCount":I
    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->maxParticleCount:I

    if-ne v1, v4, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->active:[Z

    .line 152
    .local v0, "active":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v0

    .local v3, "n":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 153
    aget-boolean v4, v0, v2

    if-nez v4, :cond_2

    .line 154
    invoke-direct {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->activateParticle(I)V

    .line 155
    const/4 v4, 0x1

    aput-boolean v4, v0, v2

    .line 156
    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->activeCount:I

    goto :goto_0

    .line 152
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public addParticles(I)V
    .locals 7
    .param p1, "count"    # I

    .prologue
    .line 163
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->maxParticleCount:I

    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->activeCount:I

    sub-int/2addr v5, v6

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 164
    if-nez p1, :cond_0

    .line 179
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->active:[Z

    .line 166
    .local v0, "active":[Z
    const/4 v2, 0x0

    .local v2, "index":I
    array-length v4, v0

    .line 168
    .local v4, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_3

    move v3, v2

    .line 169
    .end local v2    # "index":I
    .local v3, "index":I
    :goto_2
    if-ge v3, v4, :cond_2

    .line 170
    aget-boolean v5, v0, v3

    if-nez v5, :cond_1

    .line 171
    invoke-direct {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->activateParticle(I)V

    .line 172
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    const/4 v5, 0x1

    aput-boolean v5, v0, v3

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 169
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_2

    :cond_2
    move v2, v3

    .line 178
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :cond_3
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->activeCount:I

    add-int/2addr v5, p1

    iput v5, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->activeCount:I

    goto :goto_0
.end method

.method public allowCompletion()V
    .locals 1

    .prologue
    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->allowCompletion:Z

    .line 619
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->duration:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationTimer:F

    .line 620
    return-void
.end method

.method public cleansUpBlendFunction()Z
    .locals 1

    .prologue
    .line 741
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->cleansUpBlendFunction:Z

    return v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 8
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x303

    const/16 v5, 0x302

    .line 235
    iget-boolean v4, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->premultipliedAlpha:Z

    if-eqz v4, :cond_1

    .line 236
    invoke-interface {p1, v7, v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setBlendFunction(II)V

    .line 242
    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->particles:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;

    .line 243
    .local v3, "particles":[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->active:[Z

    .line 245
    .local v0, "active":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "n":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 246
    aget-boolean v4, v0, v1

    if-eqz v4, :cond_0

    aget-object v4, v3, v1

    invoke-virtual {v4, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 245
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 237
    .end local v0    # "active":[Z
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "particles":[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;
    :cond_1
    iget-boolean v4, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->additive:Z

    if-eqz v4, :cond_2

    .line 238
    invoke-interface {p1, v5, v7}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setBlendFunction(II)V

    goto :goto_0

    .line 240
    :cond_2
    invoke-interface {p1, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setBlendFunction(II)V

    goto :goto_0

    .line 249
    .restart local v0    # "active":[Z
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    .restart local v3    # "particles":[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;
    :cond_3
    iget-boolean v4, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->cleansUpBlendFunction:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->additive:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->premultipliedAlpha:Z

    if-eqz v4, :cond_5

    .line 250
    :cond_4
    invoke-interface {p1, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setBlendFunction(II)V

    .line 252
    :cond_5
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 15
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "delta"    # F

    .prologue
    .line 257
    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->accumulator:F

    const/high16 v11, 0x447a0000    # 1000.0f

    mul-float v11, v11, p2

    add-float/2addr v10, v11

    iput v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->accumulator:F

    .line 258
    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->accumulator:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    .line 259
    invoke-virtual/range {p0 .. p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->accumulator:F

    float-to-int v3, v10

    .line 263
    .local v3, "deltaMillis":I
    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->accumulator:F

    int-to-float v11, v3

    sub-float/2addr v10, v11

    iput v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->accumulator:F

    .line 265
    iget-boolean v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->premultipliedAlpha:Z

    if-eqz v10, :cond_3

    .line 266
    const/4 v10, 0x1

    const/16 v11, 0x303

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setBlendFunction(II)V

    .line 273
    :goto_1
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->particles:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;

    .line 274
    .local v9, "particles":[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->active:[Z

    .line 275
    .local v1, "active":[Z
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->activeCount:I

    .line 276
    .local v2, "activeCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    array-length v7, v1

    .local v7, "n":I
    :goto_2
    if-ge v6, v7, :cond_6

    .line 277
    aget-boolean v10, v1, v6

    if-eqz v10, :cond_2

    .line 278
    aget-object v8, v9, v6

    .line 279
    .local v8, "particle":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;
    move/from16 v0, p2

    invoke-direct {p0, v8, v0, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->updateParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;FI)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 280
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 276
    .end local v8    # "particle":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;
    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 267
    .end local v1    # "active":[Z
    .end local v2    # "activeCount":I
    .end local v6    # "i":I
    .end local v7    # "n":I
    .end local v9    # "particles":[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;
    :cond_3
    iget-boolean v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->additive:Z

    if-eqz v10, :cond_4

    .line 268
    const/16 v10, 0x302

    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setBlendFunction(II)V

    goto :goto_1

    .line 270
    :cond_4
    const/16 v10, 0x302

    const/16 v11, 0x303

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setBlendFunction(II)V

    goto :goto_1

    .line 282
    .restart local v1    # "active":[Z
    .restart local v2    # "activeCount":I
    .restart local v6    # "i":I
    .restart local v7    # "n":I
    .restart local v8    # "particle":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;
    .restart local v9    # "particles":[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;
    :cond_5
    const/4 v10, 0x0

    aput-boolean v10, v1, v6

    .line 283
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 287
    .end local v8    # "particle":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;
    :cond_6
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->activeCount:I

    .line 289
    iget-boolean v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->cleansUpBlendFunction:Z

    if-eqz v10, :cond_8

    iget-boolean v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->additive:Z

    if-nez v10, :cond_7

    iget-boolean v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->premultipliedAlpha:Z

    if-eqz v10, :cond_8

    .line 290
    :cond_7
    const/16 v10, 0x302

    const/16 v11, 0x303

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setBlendFunction(II)V

    .line 292
    :cond_8
    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->delayTimer:F

    iget v11, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->delay:F

    cmpg-float v10, v10, v11

    if-gez v10, :cond_9

    .line 293
    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->delayTimer:F

    int-to-float v11, v3

    add-float/2addr v10, v11

    iput v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->delayTimer:F

    goto :goto_0

    .line 297
    :cond_9
    iget-boolean v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->firstUpdate:Z

    if-eqz v10, :cond_a

    .line 298
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->firstUpdate:Z

    .line 299
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->addParticle()V

    .line 302
    :cond_a
    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationTimer:F

    iget v11, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->duration:F

    cmpg-float v10, v10, v11

    if-gez v10, :cond_c

    .line 303
    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationTimer:F

    int-to-float v11, v3

    add-float/2addr v10, v11

    iput v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationTimer:F

    .line 309
    :goto_4
    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionDelta:I

    add-int/2addr v10, v3

    iput v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionDelta:I

    .line 310
    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emission:I

    int-to-float v10, v10

    iget v11, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionDiff:I

    int-to-float v11, v11

    iget-object v12, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget v13, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationTimer:F

    iget v14, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->duration:F

    div-float/2addr v13, v14

    invoke-virtual {v12, v13}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v12

    mul-float/2addr v11, v12

    add-float v4, v10, v11

    .line 311
    .local v4, "emissionTime":F
    const/4 v10, 0x0

    cmpl-float v10, v4, v10

    if-lez v10, :cond_b

    .line 312
    const/high16 v10, 0x447a0000    # 1000.0f

    div-float v4, v10, v4

    .line 313
    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionDelta:I

    int-to-float v10, v10

    cmpl-float v10, v10, v4

    if-ltz v10, :cond_b

    .line 314
    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionDelta:I

    int-to-float v10, v10

    div-float/2addr v10, v4

    float-to-int v5, v10

    .line 315
    .local v5, "emitCount":I
    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->maxParticleCount:I

    sub-int/2addr v10, v2

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 316
    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionDelta:I

    int-to-float v10, v10

    int-to-float v11, v5

    mul-float/2addr v11, v4

    sub-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionDelta:I

    .line 317
    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionDelta:I

    int-to-float v10, v10

    rem-float/2addr v10, v4

    float-to-int v10, v10

    iput v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionDelta:I

    .line 318
    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->addParticles(I)V

    .line 321
    .end local v5    # "emitCount":I
    :cond_b
    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->minParticleCount:I

    if-ge v2, v10, :cond_0

    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->minParticleCount:I

    sub-int/2addr v10, v2

    invoke-virtual {p0, v10}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->addParticles(I)V

    goto/16 :goto_0

    .line 305
    .end local v4    # "emissionTime":F
    :cond_c
    iget-boolean v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->continuous:Z

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->allowCompletion:Z

    if-nez v10, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->restart()V

    goto :goto_4
.end method

.method public flipY()V
    .locals 3

    .prologue
    .line 825
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->angleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->angleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getHighMin()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->angleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getHighMax()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    .line 826
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->angleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->angleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getLowMin()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->angleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getLowMax()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setLow(FF)V

    .line 828
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->gravityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->gravityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getHighMin()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->gravityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getHighMax()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    .line 829
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->gravityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->gravityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getLowMin()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->gravityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getLowMax()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setLow(FF)V

    .line 831
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->windValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->windValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getHighMin()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->windValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getHighMax()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    .line 832
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->windValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->windValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getLowMin()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->windValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getLowMax()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setLow(FF)V

    .line 834
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->rotationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->rotationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getHighMin()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->rotationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getHighMax()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    .line 835
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->rotationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->rotationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getLowMin()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->rotationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getLowMax()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setLow(FF)V

    .line 837
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->yOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->yOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->getLowMin()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->yOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->getLowMax()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->setLow(FF)V

    .line 838
    return-void
.end method

.method public getActiveCount()I
    .locals 1

    .prologue
    .line 803
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->activeCount:I

    return v0
.end method

.method public getAngle()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->angleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    return-object v0
.end method

.method public getBoundingBox()Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 842
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    if-nez v6, :cond_0

    new-instance v6, Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-direct {v6}, Lcom/badlogic/gdx/math/collision/BoundingBox;-><init>()V

    iput-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 844
    :cond_0
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->particles:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;

    .line 845
    .local v4, "particles":[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->active:[Z

    .line 846
    .local v0, "active":[Z
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 848
    .local v1, "bounds":Lcom/badlogic/gdx/math/collision/BoundingBox;
    invoke-virtual {v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 849
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v0

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 850
    aget-boolean v6, v0, v2

    if-eqz v6, :cond_1

    .line 851
    aget-object v6, v4, v2

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->getBoundingRectangle()Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v5

    .line 852
    .local v5, "r":Lcom/badlogic/gdx/math/Rectangle;
    iget v6, v5, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v7, v5, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-virtual {v1, v6, v7, v9}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(FFF)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 853
    iget v6, v5, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v7, v5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v6, v7

    iget v7, v5, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v8, v5, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v7, v8

    invoke-virtual {v1, v6, v7, v9}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(FFF)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 849
    .end local v5    # "r":Lcom/badlogic/gdx/math/Rectangle;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 856
    :cond_2
    return-object v1
.end method

.method public getDelay()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->delayValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    return-object v0
.end method

.method public getDuration()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    return-object v0
.end method

.method public getEmission()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    return-object v0
.end method

.method public getGravity()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->gravityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    return-object v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getLife()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    return-object v0
.end method

.method public getLifeOffset()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    return-object v0
.end method

.method public getMaxParticleCount()I
    .locals 1

    .prologue
    .line 781
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->maxParticleCount:I

    return v0
.end method

.method public getMinParticleCount()I
    .locals 1

    .prologue
    .line 773
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->minParticleCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentComplete()F
    .locals 3

    .prologue
    .line 790
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->delayTimer:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->delay:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 791
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationTimer:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->duration:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method public getRotation()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->rotationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    return-object v0
.end method

.method public getScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->scaleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    return-object v0
.end method

.method public getSpawnHeight()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    return-object v0
.end method

.method public getSpawnShape()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;

    return-object v0
.end method

.method public getSpawnWidth()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    return-object v0
.end method

.method public getSprite()Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    return-object v0
.end method

.method public getTint()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->tintValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    return-object v0
.end method

.method public getTransparency()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->transparencyValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    return-object v0
.end method

.method public getVelocity()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->velocityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    return-object v0
.end method

.method public getWind()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->windValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    return-object v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 795
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->x:F

    return v0
.end method

.method public getXOffsetValue()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->xOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    return-object v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 799
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->y:F

    return v0
.end method

.method public getYOffsetValue()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->yOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    return-object v0
.end method

.method public isAdditive()Z
    .locals 1

    .prologue
    .line 731
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->additive:Z

    return v0
.end method

.method public isAligned()Z
    .locals 1

    .prologue
    .line 723
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->aligned:Z

    return v0
.end method

.method public isAttached()Z
    .locals 1

    .prologue
    .line 707
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->attached:Z

    return v0
.end method

.method public isBehind()Z
    .locals 1

    .prologue
    .line 757
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->behind:Z

    return v0
.end method

.method public isComplete()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 785
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->delayTimer:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->delay:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 786
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationTimer:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->duration:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->activeCount:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isContinuous()Z
    .locals 1

    .prologue
    .line 715
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->continuous:Z

    return v0
.end method

.method public isPremultipliedAlpha()Z
    .locals 1

    .prologue
    .line 765
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->premultipliedAlpha:Z

    return v0
.end method

.method public load(Ljava/io/BufferedReader;)V
    .locals 5
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 913
    :try_start_0
    const-string v2, "name"

    invoke-static {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readString(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->name:Ljava/lang/String;

    .line 914
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 915
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->delayValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->load(Ljava/io/BufferedReader;)V

    .line 916
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 917
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->load(Ljava/io/BufferedReader;)V

    .line 918
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 919
    const-string v2, "minParticleCount"

    invoke-static {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readInt(Ljava/io/BufferedReader;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->setMinParticleCount(I)V

    .line 920
    const-string v2, "maxParticleCount"

    invoke-static {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readInt(Ljava/io/BufferedReader;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->setMaxParticleCount(I)V

    .line 921
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 922
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Ljava/io/BufferedReader;)V

    .line 923
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 924
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Ljava/io/BufferedReader;)V

    .line 925
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 926
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Ljava/io/BufferedReader;)V

    .line 927
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 928
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->xOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->load(Ljava/io/BufferedReader;)V

    .line 929
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 930
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->yOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->load(Ljava/io/BufferedReader;)V

    .line 931
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 932
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->load(Ljava/io/BufferedReader;)V

    .line 933
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 934
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Ljava/io/BufferedReader;)V

    .line 935
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 936
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Ljava/io/BufferedReader;)V

    .line 937
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 938
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->scaleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Ljava/io/BufferedReader;)V

    .line 939
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 940
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->velocityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Ljava/io/BufferedReader;)V

    .line 941
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 942
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->angleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Ljava/io/BufferedReader;)V

    .line 943
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 944
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->rotationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Ljava/io/BufferedReader;)V

    .line 945
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 946
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->windValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Ljava/io/BufferedReader;)V

    .line 947
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 948
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->gravityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Ljava/io/BufferedReader;)V

    .line 949
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 950
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->tintValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->load(Ljava/io/BufferedReader;)V

    .line 951
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 952
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->transparencyValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Ljava/io/BufferedReader;)V

    .line 953
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 954
    const-string v2, "attached"

    invoke-static {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readBoolean(Ljava/io/BufferedReader;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->attached:Z

    .line 955
    const-string v2, "continuous"

    invoke-static {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readBoolean(Ljava/io/BufferedReader;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->continuous:Z

    .line 956
    const-string v2, "aligned"

    invoke-static {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readBoolean(Ljava/io/BufferedReader;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->aligned:Z

    .line 957
    const-string v2, "additive"

    invoke-static {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readBoolean(Ljava/io/BufferedReader;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->additive:Z

    .line 958
    const-string v2, "behind"

    invoke-static {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readBoolean(Ljava/io/BufferedReader;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->behind:Z

    .line 961
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 962
    .local v1, "line":Ljava/lang/String;
    const-string v2, "premultipliedAlpha"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 963
    invoke-static {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->premultipliedAlpha:Z

    .line 964
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 966
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->setImagePath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 971
    return-void

    .line 967
    .end local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 968
    .local v0, "ex":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->name:Ljava/lang/String;

    if-nez v2, :cond_1

    throw v0

    .line 969
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing emitter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected newParticle(Lcom/badlogic/gdx/graphics/g2d/Sprite;)Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;
    .locals 1
    .param p1, "sprite"    # Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .prologue
    .line 378
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;-><init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    return-object v0
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 331
    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionDelta:I

    .line 332
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->duration:F

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationTimer:F

    .line 333
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->active:[Z

    .line 334
    .local v0, "active":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 335
    aput-boolean v4, v0, v1

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    :cond_0
    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->activeCount:I

    .line 337
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->start()V

    .line 338
    return-void
.end method

.method public save(Ljava/io/Writer;)V
    .locals 2
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 861
    const-string v0, "- Delay -\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 862
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->delayValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->save(Ljava/io/Writer;)V

    .line 863
    const-string v0, "- Duration - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->save(Ljava/io/Writer;)V

    .line 865
    const-string v0, "- Count - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "min: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->minParticleCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->maxParticleCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 868
    const-string v0, "- Emission - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 869
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->save(Ljava/io/Writer;)V

    .line 870
    const-string v0, "- Life - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->save(Ljava/io/Writer;)V

    .line 872
    const-string v0, "- Life Offset - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 873
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->save(Ljava/io/Writer;)V

    .line 874
    const-string v0, "- X Offset - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 875
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->xOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->save(Ljava/io/Writer;)V

    .line 876
    const-string v0, "- Y Offset - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 877
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->yOffsetValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->save(Ljava/io/Writer;)V

    .line 878
    const-string v0, "- Spawn Shape - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 879
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->save(Ljava/io/Writer;)V

    .line 880
    const-string v0, "- Spawn Width - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 881
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->save(Ljava/io/Writer;)V

    .line 882
    const-string v0, "- Spawn Height - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 883
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->save(Ljava/io/Writer;)V

    .line 884
    const-string v0, "- Scale - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 885
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->scaleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->save(Ljava/io/Writer;)V

    .line 886
    const-string v0, "- Velocity - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 887
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->velocityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->save(Ljava/io/Writer;)V

    .line 888
    const-string v0, "- Angle - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 889
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->angleValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->save(Ljava/io/Writer;)V

    .line 890
    const-string v0, "- Rotation - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 891
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->rotationValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->save(Ljava/io/Writer;)V

    .line 892
    const-string v0, "- Wind - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 893
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->windValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->save(Ljava/io/Writer;)V

    .line 894
    const-string v0, "- Gravity - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 895
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->gravityValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->save(Ljava/io/Writer;)V

    .line 896
    const-string v0, "- Tint - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 897
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->tintValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->save(Ljava/io/Writer;)V

    .line 898
    const-string v0, "- Transparency - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 899
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->transparencyValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->save(Ljava/io/Writer;)V

    .line 900
    const-string v0, "- Options - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attached: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->attached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "continuous: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->continuous:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aligned: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->aligned:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "additive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->additive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "behind: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->behind:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "premultipliedAlpha: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->premultipliedAlpha:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 907
    const-string v0, "- Image Path -\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->imagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 909
    return-void
.end method

.method public setAdditive(Z)V
    .locals 0
    .param p1, "additive"    # Z

    .prologue
    .line 735
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->additive:Z

    .line 736
    return-void
.end method

.method public setAligned(Z)V
    .locals 0
    .param p1, "aligned"    # Z

    .prologue
    .line 727
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->aligned:Z

    .line 728
    return-void
.end method

.method public setAttached(Z)V
    .locals 0
    .param p1, "attached"    # Z

    .prologue
    .line 711
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->attached:Z

    .line 712
    return-void
.end method

.method public setBehind(Z)V
    .locals 0
    .param p1, "behind"    # Z

    .prologue
    .line 761
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->behind:Z

    .line 762
    return-void
.end method

.method public setCleansUpBlendFunction(Z)V
    .locals 0
    .param p1, "cleansUpBlendFunction"    # Z

    .prologue
    .line 753
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->cleansUpBlendFunction:Z

    .line 754
    return-void
.end method

.method public setContinuous(Z)V
    .locals 0
    .param p1, "continuous"    # Z

    .prologue
    .line 719
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->continuous:Z

    .line 720
    return-void
.end method

.method public setFlip(ZZ)V
    .locals 4
    .param p1, "flipX"    # Z
    .param p2, "flipY"    # Z

    .prologue
    .line 815
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->flipX:Z

    .line 816
    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->flipY:Z

    .line 817
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->particles:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;

    if-nez v3, :cond_1

    .line 822
    :cond_0
    return-void

    .line 818
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->particles:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;

    array-length v1, v3

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 819
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->particles:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;

    aget-object v2, v3, v0

    .line 820
    .local v2, "particle":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;
    if-eqz v2, :cond_2

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->flip(ZZ)V

    .line 818
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 811
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->imagePath:Ljava/lang/String;

    .line 812
    return-void
.end method

.method public setMaxParticleCount(I)V
    .locals 1
    .param p1, "maxParticleCount"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->maxParticleCount:I

    .line 143
    new-array v0, p1, [Z

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->active:[Z

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->activeCount:I

    .line 145
    new-array v0, p1, [Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->particles:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;

    .line 146
    return-void
.end method

.method public setMinParticleCount(I)V
    .locals 0
    .param p1, "minParticleCount"    # I

    .prologue
    .line 777
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->minParticleCount:I

    .line 778
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 631
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->name:Ljava/lang/String;

    .line 632
    return-void
.end method

.method public setPosition(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 590
    iget-boolean v5, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->attached:Z

    if-eqz v5, :cond_1

    .line 591
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->x:F

    sub-float v3, p1, v5

    .line 592
    .local v3, "xAmount":F
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->y:F

    sub-float v4, p2, v5

    .line 593
    .local v4, "yAmount":F
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->active:[Z

    .line 594
    .local v0, "active":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 595
    aget-boolean v5, v0, v1

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->particles:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;

    aget-object v5, v5, v1

    invoke-virtual {v5, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->translate(FF)V

    .line 594
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 597
    .end local v0    # "active":[Z
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "xAmount":F
    .end local v4    # "yAmount":F
    :cond_1
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->x:F

    .line 598
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->y:F

    .line 599
    return-void
.end method

.method public setPremultipliedAlpha(Z)V
    .locals 0
    .param p1, "premultipliedAlpha"    # Z

    .prologue
    .line 769
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->premultipliedAlpha:Z

    .line 770
    return-void
.end method

.method public setSprite(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V
    .locals 7
    .param p1, "sprite"    # Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .line 603
    if-nez p1, :cond_1

    .line 613
    :cond_0
    return-void

    .line 604
    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getOriginX()F

    move-result v2

    .line 605
    .local v2, "originX":F
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getOriginY()F

    move-result v3

    .line 606
    .local v3, "originY":F
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v5

    .line 607
    .local v5, "texture":Lcom/badlogic/gdx/graphics/Texture;
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->particles:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;

    array-length v1, v6

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 608
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->particles:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;

    aget-object v4, v6, v0

    .line 609
    .local v4, "particle":Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;
    if-eqz v4, :cond_0

    .line 610
    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->setTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 611
    invoke-virtual {v4, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->setOrigin(FF)V

    .line 607
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->firstUpdate:Z

    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->allowCompletion:Z

    .line 327
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->restart()V

    .line 328
    return-void
.end method

.method public update(F)V
    .locals 14
    .param p1, "delta"    # F

    .prologue
    .line 182
    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->accumulator:F

    const/high16 v10, 0x447a0000    # 1000.0f

    mul-float/2addr v10, p1

    add-float/2addr v9, v10

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->accumulator:F

    .line 183
    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->accumulator:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_0

    .line 232
    :goto_0
    return-void

    .line 184
    :cond_0
    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->accumulator:F

    float-to-int v2, v9

    .line 185
    .local v2, "deltaMillis":I
    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->accumulator:F

    int-to-float v10, v2

    sub-float/2addr v9, v10

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->accumulator:F

    .line 187
    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->delayTimer:F

    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->delay:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    .line 188
    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->delayTimer:F

    int-to-float v10, v2

    add-float/2addr v9, v10

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->delayTimer:F

    .line 222
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->active:[Z

    .line 223
    .local v0, "active":[Z
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->activeCount:I

    .line 224
    .local v1, "activeCount":I
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->particles:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;

    .line 225
    .local v8, "particles":[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;
    const/4 v6, 0x0

    .local v6, "i":I
    array-length v7, v0

    .local v7, "n":I
    :goto_2
    if-ge v6, v7, :cond_9

    .line 226
    aget-boolean v9, v0, v6

    if-eqz v9, :cond_2

    aget-object v9, v8, v6

    invoke-direct {p0, v9, p1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->updateParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;FI)Z

    move-result v9

    if-nez v9, :cond_2

    .line 227
    const/4 v9, 0x0

    aput-boolean v9, v0, v6

    .line 228
    add-int/lit8 v1, v1, -0x1

    .line 225
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 190
    .end local v0    # "active":[Z
    .end local v1    # "activeCount":I
    .end local v6    # "i":I
    .end local v7    # "n":I
    .end local v8    # "particles":[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;
    :cond_3
    const/4 v3, 0x0

    .line 191
    .local v3, "done":Z
    iget-boolean v9, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->firstUpdate:Z

    if-eqz v9, :cond_4

    .line 192
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->firstUpdate:Z

    .line 193
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->addParticle()V

    .line 196
    :cond_4
    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationTimer:F

    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->duration:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_6

    .line 197
    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationTimer:F

    int-to-float v10, v2

    add-float/2addr v9, v10

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationTimer:F

    .line 205
    :goto_3
    if-nez v3, :cond_1

    .line 206
    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionDelta:I

    add-int/2addr v9, v2

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionDelta:I

    .line 207
    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emission:I

    int-to-float v9, v9

    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionDiff:I

    int-to-float v10, v10

    iget-object v11, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget v12, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationTimer:F

    iget v13, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->duration:F

    div-float/2addr v12, v13

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v11

    mul-float/2addr v10, v11

    add-float v4, v9, v10

    .line 208
    .local v4, "emissionTime":F
    const/4 v9, 0x0

    cmpl-float v9, v4, v9

    if-lez v9, :cond_5

    .line 209
    const/high16 v9, 0x447a0000    # 1000.0f

    div-float v4, v9, v4

    .line 210
    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionDelta:I

    int-to-float v9, v9

    cmpl-float v9, v9, v4

    if-ltz v9, :cond_5

    .line 211
    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionDelta:I

    int-to-float v9, v9

    div-float/2addr v9, v4

    float-to-int v5, v9

    .line 212
    .local v5, "emitCount":I
    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->maxParticleCount:I

    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->activeCount:I

    sub-int/2addr v9, v10

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 213
    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionDelta:I

    int-to-float v9, v9

    int-to-float v10, v5

    mul-float/2addr v10, v4

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionDelta:I

    .line 214
    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionDelta:I

    int-to-float v9, v9

    rem-float/2addr v9, v4

    float-to-int v9, v9

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->emissionDelta:I

    .line 215
    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->addParticles(I)V

    .line 218
    .end local v5    # "emitCount":I
    :cond_5
    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->activeCount:I

    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->minParticleCount:I

    if-ge v9, v10, :cond_1

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->minParticleCount:I

    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->activeCount:I

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->addParticles(I)V

    goto/16 :goto_1

    .line 199
    .end local v4    # "emissionTime":F
    :cond_6
    iget-boolean v9, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->continuous:Z

    if-eqz v9, :cond_7

    iget-boolean v9, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->allowCompletion:Z

    if-eqz v9, :cond_8

    .line 200
    :cond_7
    const/4 v3, 0x1

    goto :goto_3

    .line 202
    :cond_8
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->restart()V

    goto :goto_3

    .line 231
    .end local v3    # "done":Z
    .restart local v0    # "active":[Z
    .restart local v1    # "activeCount":I
    .restart local v6    # "i":I
    .restart local v7    # "n":I
    .restart local v8    # "particles":[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;
    :cond_9
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->activeCount:I

    goto/16 :goto_0
.end method
