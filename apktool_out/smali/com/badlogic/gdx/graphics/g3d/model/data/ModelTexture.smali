.class public Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;
.super Ljava/lang/Object;
.source "ModelTexture.java"


# static fields
.field public static final USAGE_AMBIENT:I = 0x4

.field public static final USAGE_BUMP:I = 0x8

.field public static final USAGE_DIFFUSE:I = 0x2

.field public static final USAGE_EMISSIVE:I = 0x3

.field public static final USAGE_NONE:I = 0x1

.field public static final USAGE_NORMAL:I = 0x7

.field public static final USAGE_REFLECTION:I = 0xa

.field public static final USAGE_SHININESS:I = 0x6

.field public static final USAGE_SPECULAR:I = 0x5

.field public static final USAGE_TRANSPARENCY:I = 0x9

.field public static final USAGE_UNKNOWN:I


# instance fields
.field public fileName:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public usage:I

.field public uvScaling:Lcom/badlogic/gdx/math/Vector2;

.field public uvTranslation:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
