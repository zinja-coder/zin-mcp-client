.class public final enum Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;
.super Ljava/lang/Enum;
.source "ParticleShader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlignMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

.field public static final enum Screen:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

.field public static final enum ViewPoint:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    const-string v1, "Screen"

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->Screen:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    const-string v1, "ViewPoint"

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->ViewPoint:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->Screen:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->ViewPoint:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->$VALUES:[Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    const-class v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->$VALUES:[Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    return-object v0
.end method
