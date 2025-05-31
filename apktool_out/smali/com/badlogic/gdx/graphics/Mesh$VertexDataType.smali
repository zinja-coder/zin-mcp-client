.class public final enum Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;
.super Ljava/lang/Enum;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VertexDataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

.field public static final enum VertexArray:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

.field public static final enum VertexBufferObject:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

.field public static final enum VertexBufferObjectSubData:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    new-instance v0, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    const-string v1, "VertexArray"

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexArray:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    new-instance v0, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    const-string v1, "VertexBufferObject"

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexBufferObject:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    new-instance v0, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    const-string v1, "VertexBufferObjectSubData"

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexBufferObjectSubData:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    sget-object v1, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexArray:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexBufferObject:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexBufferObjectSubData:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->$VALUES:[Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

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
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    const-class v0, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->$VALUES:[Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    return-object v0
.end method
