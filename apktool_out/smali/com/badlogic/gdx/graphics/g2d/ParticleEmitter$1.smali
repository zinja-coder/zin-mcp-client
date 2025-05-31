.class synthetic Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$1;
.super Ljava/lang/Object;
.source "ParticleEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$badlogic$gdx$graphics$g2d$ParticleEmitter$SpawnEllipseSide:[I

.field static final synthetic $SwitchMap$com$badlogic$gdx$graphics$g2d$ParticleEmitter$SpawnShape:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 452
    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;->values()[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$1;->$SwitchMap$com$badlogic$gdx$graphics$g2d$ParticleEmitter$SpawnShape:[I

    :try_start_0
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$1;->$SwitchMap$com$badlogic$gdx$graphics$g2d$ParticleEmitter$SpawnShape:[I

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;->square:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$1;->$SwitchMap$com$badlogic$gdx$graphics$g2d$ParticleEmitter$SpawnShape:[I

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;->ellipse:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$1;->$SwitchMap$com$badlogic$gdx$graphics$g2d$ParticleEmitter$SpawnShape:[I

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;->line:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 469
    :goto_2
    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;->values()[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$1;->$SwitchMap$com$badlogic$gdx$graphics$g2d$ParticleEmitter$SpawnEllipseSide:[I

    :try_start_3
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$1;->$SwitchMap$com$badlogic$gdx$graphics$g2d$ParticleEmitter$SpawnEllipseSide:[I

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;->top:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$1;->$SwitchMap$com$badlogic$gdx$graphics$g2d$ParticleEmitter$SpawnEllipseSide:[I

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;->bottom:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    .line 452
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
