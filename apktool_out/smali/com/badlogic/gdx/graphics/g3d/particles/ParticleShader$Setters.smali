.class public Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Setters;
.super Ljava/lang/Object;
.source "ParticleShader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Setters"
.end annotation


# static fields
.field public static final cameraInvDirection:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

.field public static final cameraPosition:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

.field public static final cameraRight:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

.field public static final cameraUp:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

.field public static final screenWidth:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

.field public static final worldViewTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Setters$1;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Setters$1;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Setters;->cameraRight:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    .line 117
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Setters$2;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Setters$2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Setters;->cameraUp:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    .line 124
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Setters$3;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Setters$3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Setters;->cameraInvDirection:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    .line 130
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Setters$4;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Setters$4;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Setters;->cameraPosition:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    .line 136
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Setters$5;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Setters$5;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Setters;->screenWidth:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    .line 142
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Setters$6;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Setters$6;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Setters;->worldViewTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
