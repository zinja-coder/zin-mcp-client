.class public abstract Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
.super Ljava/lang/Object;
.source "ParticleControllerComponent.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;
.implements Lcom/badlogic/gdx/utils/Json$Serializable;
.implements Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$Configurable;


# static fields
.field protected static final TMP_M3:Lcom/badlogic/gdx/math/Matrix3;

.field protected static final TMP_M4:Lcom/badlogic/gdx/math/Matrix4;

.field protected static final TMP_Q:Lcom/badlogic/gdx/math/Quaternion;

.field protected static final TMP_Q2:Lcom/badlogic/gdx/math/Quaternion;

.field protected static final TMP_V1:Lcom/badlogic/gdx/math/Vector3;

.field protected static final TMP_V2:Lcom/badlogic/gdx/math/Vector3;

.field protected static final TMP_V3:Lcom/badlogic/gdx/math/Vector3;

.field protected static final TMP_V4:Lcom/badlogic/gdx/math/Vector3;

.field protected static final TMP_V5:Lcom/badlogic/gdx/math/Vector3;

.field protected static final TMP_V6:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field protected controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    .line 19
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    .line 20
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->TMP_V3:Lcom/badlogic/gdx/math/Vector3;

    .line 21
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->TMP_V4:Lcom/badlogic/gdx/math/Vector3;

    .line 22
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->TMP_V5:Lcom/badlogic/gdx/math/Vector3;

    .line 23
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    .line 24
    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->TMP_Q:Lcom/badlogic/gdx/math/Quaternion;

    .line 25
    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->TMP_Q2:Lcom/badlogic/gdx/math/Quaternion;

    .line 26
    new-instance v0, Lcom/badlogic/gdx/math/Matrix3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->TMP_M3:Lcom/badlogic/gdx/math/Matrix3;

    .line 27
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->TMP_M4:Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activateParticles(II)V
    .locals 0
    .param p1, "startIndex"    # I
    .param p2, "count"    # I

    .prologue
    .line 30
    return-void
.end method

.method public allocateChannels()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public abstract copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public end()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public killParticles(II)V
    .locals 0
    .param p1, "startIndex"    # I
    .param p2, "count"    # I

    .prologue
    .line 32
    return-void
.end method

.method public load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 0
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "data"    # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .prologue
    .line 52
    return-void
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 0
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 56
    return-void
.end method

.method public save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 0
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "data"    # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .prologue
    .line 50
    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;)V
    .locals 0
    .param p1, "particleController"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    .line 47
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 0
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;

    .prologue
    .line 54
    return-void
.end method
