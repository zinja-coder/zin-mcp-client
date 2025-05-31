.class public final enum Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;
.super Ljava/lang/Enum;
.source "ParticleEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpawnShape"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

.field public static final enum ellipse:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

.field public static final enum line:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

.field public static final enum point:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

.field public static final enum square:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1406
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    const-string v1, "point"

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;->point:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    const-string v1, "line"

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;->line:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    const-string v1, "square"

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;->square:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    const-string v1, "ellipse"

    invoke-direct {v0, v1, v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;->ellipse:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    .line 1405
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;->point:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    aput-object v1, v0, v2

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;->line:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    aput-object v1, v0, v3

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;->square:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    aput-object v1, v0, v4

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;->ellipse:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    aput-object v1, v0, v5

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;->$VALUES:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

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
    .line 1405
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1405
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;
    .locals 1

    .prologue
    .line 1405
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;->$VALUES:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    return-object v0
.end method
