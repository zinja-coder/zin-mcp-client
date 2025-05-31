.class public Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;
.super Ljava/lang/Object;
.source "DefaultShader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Setters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;,
        Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;
    }
.end annotation


# static fields
.field public static final ambientTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

.field public static final ambientUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

.field public static final cameraDirection:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

.field public static final cameraPosition:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

.field public static final cameraUp:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

.field public static final diffuseColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

.field public static final diffuseTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

.field public static final diffuseUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

.field public static final emissiveColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

.field public static final emissiveTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

.field public static final emissiveUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

.field public static final environmentCubemap:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

.field public static final normalMatrix:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

.field public static final normalTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

.field public static final normalUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

.field public static final projTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

.field public static final projViewTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

.field public static final projViewWorldTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

.field public static final reflectionColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

.field public static final reflectionTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

.field public static final reflectionUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

.field public static final shininess:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

.field public static final specularColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

.field public static final specularTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

.field public static final specularUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

.field public static final viewTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

.field public static final viewWorldTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

.field public static final worldTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$1;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$1;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->projTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    .line 124
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$2;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->viewTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    .line 130
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$3;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->projViewTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    .line 136
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$4;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$4;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->cameraPosition:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    .line 143
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$5;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$5;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->cameraDirection:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    .line 149
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$6;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$6;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->cameraUp:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    .line 155
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$7;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$7;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->worldTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    .line 161
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$8;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$8;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->viewWorldTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    .line 168
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$9;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$9;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->projViewWorldTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    .line 175
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$10;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$10;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->normalMatrix:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    .line 202
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$11;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$11;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->shininess:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    .line 208
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$12;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$12;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->diffuseColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    .line 214
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$13;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$13;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->diffuseTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    .line 222
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$14;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$14;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->diffuseUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    .line 229
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$15;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$15;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->specularColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    .line 235
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$16;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$16;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->specularTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    .line 243
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$17;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$17;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->specularUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    .line 250
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$18;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$18;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->emissiveColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    .line 256
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$19;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$19;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->emissiveTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    .line 264
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$20;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$20;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->emissiveUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    .line 271
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$21;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$21;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->reflectionColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    .line 277
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$22;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$22;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->reflectionTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    .line 285
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$23;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$23;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->reflectionUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    .line 292
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$24;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$24;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->normalTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    .line 300
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$25;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$25;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->normalUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    .line 307
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$26;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$26;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->ambientTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    .line 315
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$27;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$27;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->ambientUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    .line 360
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$28;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$28;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->environmentCubemap:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    return-void
.end method
