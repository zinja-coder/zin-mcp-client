.class public Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;
.super Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$LocalSetter;
.source "DefaultShader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bones"
.end annotation


# static fields
.field private static final idtMatrix:Lcom/badlogic/gdx/math/Matrix4;


# instance fields
.field public final bones:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;->idtMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "numBones"    # I

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$LocalSetter;-><init>()V

    .line 188
    mul-int/lit8 v0, p1, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;->bones:[F

    .line 189
    return-void
.end method


# virtual methods
.method public set(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;ILcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V
    .locals 7
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;
    .param p2, "inputID"    # I
    .param p3, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p4, "combinedAttributes"    # Lcom/badlogic/gdx/graphics/g3d/Attributes;

    .prologue
    .line 193
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;->bones:[F

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 194
    div-int/lit8 v1, v0, 0x10

    .line 195
    .local v1, "idx":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;->bones:[F

    iget-object v2, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    if-eqz v2, :cond_0

    iget-object v2, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;->idtMatrix:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v2, v2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    rem-int/lit8 v4, v0, 0x10

    aget v2, v2, v4

    :goto_1
    aput v2, v3, v0

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_1
    iget-object v2, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    rem-int/lit8 v4, v0, 0x10

    aget v2, v2, v4

    goto :goto_1

    .line 198
    .end local v1    # "idx":I
    :cond_2
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->loc(I)I

    move-result v3

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;->bones:[F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;->bones:[F

    array-length v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix4fv(I[FII)V

    .line 199
    return-void
.end method
