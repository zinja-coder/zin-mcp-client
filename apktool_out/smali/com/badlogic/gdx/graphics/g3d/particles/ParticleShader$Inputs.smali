.class public Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Inputs;
.super Ljava/lang/Object;
.source "ParticleShader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Inputs"
.end annotation


# static fields
.field public static final cameraInvDirection:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

.field public static final cameraRight:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

.field public static final regionSize:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

.field public static final screenWidth:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 104
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_cameraRight"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Inputs;->cameraRight:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    .line 105
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_cameraInvDirection"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Inputs;->cameraInvDirection:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    .line 106
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_screenWidth"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Inputs;->screenWidth:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    .line 107
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_regionSize"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Inputs;->regionSize:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
