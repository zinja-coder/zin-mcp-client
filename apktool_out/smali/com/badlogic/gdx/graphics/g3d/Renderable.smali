.class public Lcom/badlogic/gdx/graphics/g3d/Renderable;
.super Ljava/lang/Object;
.source "Renderable.java"


# instance fields
.field public bones:[Lcom/badlogic/gdx/math/Matrix4;

.field public environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

.field public material:Lcom/badlogic/gdx/graphics/g3d/Material;

.field public mesh:Lcom/badlogic/gdx/graphics/Mesh;

.field public meshPartOffset:I

.field public meshPartSize:I

.field public primitiveType:I

.field public shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

.field public userData:Ljava/lang/Object;

.field public final worldTransform:Lcom/badlogic/gdx/math/Matrix4;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method


# virtual methods
.method public set(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .locals 2
    .param p1, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 103
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 104
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 105
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPartOffset:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPartOffset:I

    .line 106
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPartSize:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPartSize:I

    .line 107
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->primitiveType:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->primitiveType:I

    .line 108
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    .line 109
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    .line 110
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 111
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->userData:Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->userData:Ljava/lang/Object;

    .line 112
    return-object p0
.end method
