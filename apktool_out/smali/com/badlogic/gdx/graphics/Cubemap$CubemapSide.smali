.class public final enum Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;
.super Ljava/lang/Enum;
.source "Cubemap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/Cubemap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CubemapSide"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

.field public static final enum NegativeX:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

.field public static final enum NegativeY:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

.field public static final enum NegativeZ:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

.field public static final enum PositiveX:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

.field public static final enum PositiveY:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

.field public static final enum PositiveZ:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;


# instance fields
.field public final glEnum:I

.field public final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 46
    new-instance v0, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    const-string v1, "PositiveX"

    const v2, 0x8515

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->PositiveX:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    .line 48
    new-instance v0, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    const-string v1, "NegativeX"

    const v2, 0x8516

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->NegativeX:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    const-string v1, "PositiveY"

    const v2, 0x8517

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->PositiveY:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    .line 52
    new-instance v0, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    const-string v1, "NegativeY"

    const v2, 0x8518

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->NegativeY:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    .line 54
    new-instance v0, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    const-string v1, "PositiveZ"

    const v2, 0x8519

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->PositiveZ:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    .line 56
    new-instance v0, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    const-string v1, "NegativeZ"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const v4, 0x851a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->NegativeZ:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    .line 44
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    sget-object v1, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->PositiveX:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    aput-object v1, v0, v5

    sget-object v1, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->NegativeX:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    aput-object v1, v0, v6

    sget-object v1, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->PositiveY:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    aput-object v1, v0, v7

    sget-object v1, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->NegativeY:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    aput-object v1, v0, v8

    sget-object v1, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->PositiveZ:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->NegativeZ:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    aput-object v2, v0, v1

    sput-object v0, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->$VALUES:[Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "index"    # I
    .param p4, "glEnum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->index:I

    .line 65
    iput p4, p0, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->glEnum:I

    .line 66
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v0, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->$VALUES:[Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    return-object v0
.end method


# virtual methods
.method public getGLEnum()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->glEnum:I

    return v0
.end method
