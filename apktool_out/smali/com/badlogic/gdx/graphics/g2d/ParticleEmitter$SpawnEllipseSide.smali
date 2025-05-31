.class public final enum Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;
.super Ljava/lang/Enum;
.source "ParticleEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpawnEllipseSide"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;

.field public static final enum both:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;

.field public static final enum bottom:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;

.field public static final enum top:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1410
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;

    const-string v1, "both"

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;->both:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;

    const-string v1, "top"

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;->top:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;

    const-string v1, "bottom"

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;->bottom:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;

    .line 1409
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;->both:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;

    aput-object v1, v0, v2

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;->top:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;

    aput-object v1, v0, v3

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;->bottom:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;

    aput-object v1, v0, v4

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;->$VALUES:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1409
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1409
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;
    .locals 1

    .prologue
    .line 1409
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;->$VALUES:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;

    return-object v0
.end method
